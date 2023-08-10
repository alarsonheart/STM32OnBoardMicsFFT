/**
  ******************************************************************************
  * @file    audio_application.c
  * @author  SRA
  * @version v1.3.1
  * @date    17-Jul-2020
  * @brief   Audio  application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "audio_application.h"
#include "arm_math.h"
#include "stdio.h"
#define FFT_SIZE 64
#define BUFFER_SIZE ((AUDIO_IN_CHANNELS * AUDIO_IN_SAMPLING_FREQUENCY) / 1000) * N_MS_PER_INTERRUPT
#define NUM_PEAKS 3 // Number of peaks to find

// Buffer to store the result of the FFT
float32_t fftInput[FFT_SIZE]; // Buffer for the FFT input data
float32_t fftOutput[FFT_SIZE];
float32_t fftMagnitude[FFT_SIZE/2];
//extern USBD_HandleTypeDef fftOut; // Declaration of the external variable


/** @addtogroup X_CUBE_MEMSMIC1_Applications
  * @{
  */

/** @addtogroup Microphones_Acquisition
  * @{
  */

/** @defgroup AUDIO_APPLICATION
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/

/** @defgroup AUDIO_APPLICATION_Exported_Variables
  * @{
  */
BSP_AUDIO_Init_t MicParams;
uint16_t PCM_Buffer[((AUDIO_IN_CHANNELS * AUDIO_IN_SAMPLING_FREQUENCY) / 1000)  * N_MS_PER_INTERRUPT ];

/**
  * @}
  */

/** @defgroup AUDIO_APPLICATION_Private_Variables
  * @{
  */
/* Private variables ---------------------------------------------------------*/
/**
  * @}
  */

/** @defgroup AUDIO_APPLICATION_Exported_Function
  * @{
  */

/**
  * @brief  Half Transfer user callback, called by BSP functions.
  * @param  None
  * @retval None
  */



void BSP_AUDIO_IN_HalfTransfer_CallBack(uint32_t Instance)
{
  UNUSED(Instance);
//  AudioProcess();
  BSP_LED_Off(LED1);
}

/**
  * @brief  Transfer Complete user callback, called by BSP functions.
  * @param  None
  * @retval None
  */
void BSP_AUDIO_IN_TransferComplete_CallBack(uint32_t Instance)
{
  UNUSED(Instance);
  AudioProcess();
  BSP_LED_On(LED1);
}

/**
  * @brief  User function that is called when 1 ms of PDM data is available.
  *       In this application only PDM to PCM conversion and USB streaming
  *                  is performed.
  *       User can add his own code here to perform some DSP or audio analysis.
  * @param  none
  * @retval None
  */
void findMaxMagnitudeBins(float32_t* magnitudeArray, uint32_t arraySize, int* peakIndices)
{
    for (int i = 0; i < NUM_PEAKS; i++)
    {
        float32_t maxMagnitude = magnitudeArray[0];
        int maxIndex = 0;

        for (uint32_t j = 1; j < arraySize; j++)
        {
            if (magnitudeArray[j] > maxMagnitude)
            {
                maxMagnitude = magnitudeArray[j];
                maxIndex = j;
            }
        }

        // Store the index of the current peak
        peakIndices[i] = maxIndex;

        // Set the current peak's magnitude to a very small value
        // to find the next peak in the next iteration
        magnitudeArray[maxIndex] = -1.0f;
    }
}

void AudioProcess(void)
{

    // Convert 16-bit PCM data to float and store in fftInput buffer
    for (int i = 0; i < FFT_SIZE; i++)
    {
        if (i < BUFFER_SIZE)
        {
            // Convert 16-bit signed integer PCM data to float for the FFT
            int16_t pcmSample = PCM_Buffer[i];
            fftInput[i] = (float32_t)pcmSample;
        }
        else
        {
            // Zero-pad the remaining elements of fftInput
            fftInput[i] = 0.0f;
        }
    }

    // Perform the FFT on the fftInput buffer
    arm_rfft_fast_instance_f32 fft;
    arm_rfft_fast_init_f32(&fft, FFT_SIZE);
    arm_rfft_fast_f32(&fft, fftInput, fftOutput, 0);

    // Compute the magnitude spectrum (only the first half since it's symmetric)
    arm_cmplx_mag_f32(fftOutput, fftMagnitude, FFT_SIZE / 2);
//	// Copy the required samples from PCM_Buffer to fftInput (size 64)
//	  for (int i = 0; i < FFT_SIZE; i++) {
//	    if (i < 64) {
//	      fftInput[i] = (float32_t)PCM_Buffer[i]; // Convert the PCM_Buffer data to float for the FFT
//	    } else {
//	      fftInput[i] = 0.0f; // Zero-pad the remaining elements of fftInput
//	    }
//	  }
    // Find the index of the frequency bin with the maximum magnitude
    // Find the indices of the top 3 peaks in the magnitude spectrum
       int peakIndices[NUM_PEAKS];
       findMaxMagnitudeBins(fftMagnitude, FFT_SIZE / 2, peakIndices);

       // Calculate the corresponding frequencies of the top 3 peaks
       float32_t samplingFrequency = (float32_t)AUDIO_IN_SAMPLING_FREQUENCY;
       float32_t frequencyResolution = samplingFrequency / FFT_SIZE;
       float32_t peakFrequencies[NUM_PEAKS];

       for (int i = 0; i < NUM_PEAKS; i++)
       {
           peakFrequencies[i] = peakIndices[i] * frequencyResolution;
       }
//
//	  // Perform the FFT on the fftInput buffer
//	  arm_rfft_fast_instance_f32 fft;
//	  arm_rfft_fast_init_f32(&fft, FFT_SIZE);
//	  arm_rfft_fast_f32(&fft, fftInput, fftOutput, 0);
//	  arm_cmplx_mag_f32(fftOutput, fftMagnitude, FFT_SIZE / 2);

//	  USBD_LL_Transmit(&fftOut, 0x80U, (uint8_t*)fftOutput, 64); // this fucks it up too since using same USB
	  // Send the processed FFT data to USB
  Send_Audio_to_USB((int16_t *)PCM_Buffer, (AUDIO_IN_SAMPLING_FREQUENCY / 1000)*AUDIO_IN_CHANNELS * N_MS_PER_INTERRUPT);
}

/**
  * @brief  User function that is called when 1 ms of PDM data is available.
  *       In this application only PDM to PCM conversion and USB streaming
  *                  is performed.
  *       User can add his own code here to perform some DSP or audio analysis.
  * @param  none
  * @retval None
  */
void Init_Acquisition_Peripherals(uint32_t AudioFreq, uint32_t Device, uint32_t ChnlNbr)
{
  MicParams.BitsPerSample = 16;
  MicParams.ChannelsNbr = ChnlNbr;
  MicParams.Device = Device;
  MicParams.SampleRate = AudioFreq;
  MicParams.Volume = AUDIO_VOLUME_INPUT;

  if (BSP_AUDIO_IN_Init(BSP_AUDIO_IN_INSTANCE, &MicParams) != BSP_ERROR_NONE)
  {
    Error_Handler();
  }
}

/**
  * @brief  User function that is called when 1 ms of PDM data is available.
  *       In this application only PDM to PCM conversion and USB streaming
  *                  is performed.
  *       User can add his own code here to perform some DSP or audio analysis.
  * @param  none
  * @retval None
  */
void Start_Acquisition(void)
{
  if (BSP_AUDIO_IN_Record(BSP_AUDIO_IN_INSTANCE, (uint8_t *) PCM_Buffer, DEFAULT_AUDIO_IN_BUFFER_SIZE) != BSP_ERROR_NONE)
  {
    Error_Handler();
  }
}



void Error_Handler(void)
{
  while (1);
}
/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */

