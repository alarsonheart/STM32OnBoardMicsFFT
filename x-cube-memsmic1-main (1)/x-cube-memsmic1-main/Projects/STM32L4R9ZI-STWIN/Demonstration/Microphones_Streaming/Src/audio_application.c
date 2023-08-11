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
#define FFT_SIZE 4096
#define FFT_BUFFER_SIZE 4096
#define BUFFER_SIZE ((AUDIO_IN_CHANNELS * AUDIO_IN_SAMPLING_FREQUENCY / 1000) * N_MS_PER_INTERRUPT)
#define NUM_PEAKS 10
#define NUM_FREQUENCIES (FFT_SIZE / 2)
#define BH_WINDOW_SIZE FFT_BUFFER_SIZE

typedef struct {
	float32_t bin_width;
	float32_t strength;
} FrequencyData;
typedef struct {
    uint32_t index;
    float32_t frequency;
    float32_t strength;
} PeakInfo;
PeakInfo peak_info_array[NUM_PEAKS];
FrequencyData strength_buffer[NUM_FREQUENCIES];
float32_t fft_frequency[FFT_SIZE / 2];
uint32_t peak_indices[NUM_PEAKS];
float32_t peak_frequencies[NUM_PEAKS];

float32_t fftInput[FFT_BUFFER_SIZE];
uint16_t fftBufferIndex = 0;
float32_t fftOutput[FFT_BUFFER_SIZE];
float32_t fftMagnitude[FFT_BUFFER_SIZE / 2];



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
void generate_bh_window(float32_t* window, uint32_t size)
{
    const float32_t a0 = 0.35875f;
    const float32_t a1 = 0.48829f;
    const float32_t a2 = 0.14128f;
    const float32_t a3 = 0.01168f;

    for (uint32_t i = 0; i < size; i++)
    {
        float32_t coef = (2.0f * PI * i) / (size - 1);
        window[i] = a0 - a1 * arm_cos_f32(coef) + a2 * arm_cos_f32(2.0f * coef) - a3 * arm_cos_f32(3.0f * coef);
    }
}

void Perform_FFT(void)
{
//    float32_t bh_window[FFT_BUFFER_SIZE];
//
//    // Generate the Blackman-Harris window
//    generate_bh_window(bh_window, FFT_BUFFER_SIZE);
//
//    // Perform the FFT on the fftInput buffer with the Blackman-Harris window
//    for (int i = 0; i < FFT_BUFFER_SIZE; i++)
//    {
//        fftInput[i] *= bh_window[i];
//    }
    // Perform the FFT on the fftInput buffer
    arm_rfft_fast_instance_f32 fft;
    arm_rfft_fast_init_f32(&fft, FFT_BUFFER_SIZE);
    arm_rfft_fast_f32(&fft, fftInput, fftOutput, 0);

    // Compute the magnitude spectrum (only the first half since it's symmetric)
    arm_cmplx_mag_f32(fftOutput, fftMagnitude, FFT_BUFFER_SIZE / 2);

    // Fill strength_buffer with frequency data and corresponding strengths
    float32_t sampling_rate = 48000.0f;
    float32_t bin_width = sampling_rate / FFT_BUFFER_SIZE;

    for (int i = 0; i < FFT_BUFFER_SIZE / 2; i++)
    {
        strength_buffer[i].bin_width = i * bin_width;
        strength_buffer[i].strength = fftMagnitude[i];
    }

    // Find the indices of the largest peaks
    for (int i = 0; i < NUM_PEAKS; i++)
        {
            float32_t max_magnitude = -1.0f;
            uint32_t max_index = 0;

            for (int j = 0; j < FFT_BUFFER_SIZE / 2; j++)
            {
                if (strength_buffer[j].strength > max_magnitude)
                {
                    int found = 0;
                    for (int k = 0; k < i; k++)
                    {
                        if (peak_indices[k] == j)
                        {
                            found = 1;
                            break;
                        }
                    }

                    if (!found)
                    {
                        max_magnitude = strength_buffer[j].strength;
                        max_index = j;
                    }
                }
            }

            peak_indices[i] = max_index;
            peak_frequencies[i] = strength_buffer[max_index].bin_width;
            // Store the peak information in the peak_info_array
            peak_info_array[i].index = peak_indices[i];
            peak_info_array[i].frequency = peak_frequencies[i];
            peak_info_array[i].strength = max_magnitude;
        }
//    HAL_Delay(1000);
    }
void AudioProcess(void)
{
    // Convert 16-bit PCM data to float and store in fftInput buffer
    for (int i = 0; i < BUFFER_SIZE / 2; i++)
    {
        if (fftBufferIndex < FFT_BUFFER_SIZE)
        {
            float32_t left_sample = (float32_t)PCM_Buffer[i * 2] * 1.0f;
            float32_t right_sample = (float32_t)PCM_Buffer[i * 2 + 1] * 1.0f;
            fftInput[fftBufferIndex] = left_sample + right_sample; // Sum left and right samples
            fftBufferIndex++;
        }
    }

    // If the FFT buffer is filled, perform the FFT
    if (fftBufferIndex >= FFT_BUFFER_SIZE)
    {
        Perform_FFT();
        fftBufferIndex = 0; // Reset the index for the next iteration
    }

    // Send the processed FFT data to USB (you can remove this if not needed)
     Send_Audio_to_USB((int16_t *)PCM_Buffer, (AUDIO_IN_SAMPLING_FREQUENCY / 1000) * AUDIO_IN_CHANNELS * N_MS_PER_INTERRUPT);
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
/**
void generate_bh_window(float32_t* window, uint32_t size)
{
    const float32_t a0 = 0.35875f;
    const float32_t a1 = 0.48829f;
    const float32_t a2 = 0.14128f;
    const float32_t a3 = 0.01168f;

    for (uint32_t i = 0; i < size; i++)
    {
        float32_t coef = (2.0f * PI * i) / (size - 1);
        window[i] = a0 - a1 * arm_cos_f32(coef) + a2 * arm_cos_f32(2.0f * coef) - a3 * arm_cos_f32(3.0f * coef);
    }
}

float32_t interpolate_peak(float32_t left, float32_t center, float32_t right) {
    float32_t delta = 0.5 * (left - right) / (left - 2 * center + right);
    return delta;
}
void Perform_FFT(void) {
    float32_t bh_window[FFT_BUFFER_SIZE];

    // Generate the Blackman-Harris window
    generate_bh_window(bh_window, FFT_BUFFER_SIZE);

    // Apply the Blackman-Harris window to the fftInput buffer
    for (int i = 0; i < FFT_BUFFER_SIZE; i++) {
        fftInput[i] *= bh_window[i];
    }

    // Perform the FFT on the fftInput buffer
    arm_rfft_fast_instance_f32 fft;
    arm_rfft_fast_init_f32(&fft, FFT_BUFFER_SIZE);
    arm_rfft_fast_f32(&fft, fftInput, fftOutput, 0);

    // Compute the magnitude spectrum (only the first half since it's symmetric)
    arm_cmplx_mag_f32(fftOutput, fftMagnitude, FFT_BUFFER_SIZE / 2);

    // Fill strength_buffer with frequency data and corresponding strengths
    float32_t sampling_rate = 48000.0f;
    float32_t bin_width = sampling_rate / FFT_BUFFER_SIZE;

    for (int i = 0; i < FFT_BUFFER_SIZE / 2; i++) {
        strength_buffer[i].bin_width = i * bin_width;
        strength_buffer[i].strength = fftMagnitude[i];
    }

    // Find the indices of the largest peaks
    for (int i = 0; i < NUM_PEAKS; i++) {
        float32_t max_magnitude = -1.0f;
        uint32_t max_index = 0;

        for (int j = 0; j < FFT_BUFFER_SIZE / 2; j++) {
            if (strength_buffer[j].strength > max_magnitude) {
                int found = 0;
                for (int k = 0; k < i; k++) {
                    if (peak_indices[k] == j) {
                        found = 1;
                        break;
                    }
                }

                if (!found) {
                    max_magnitude = strength_buffer[j].strength;
                    max_index = j;
                }
            }
        }

        peak_indices[i] = max_index;
        peak_frequencies[i] = strength_buffer[max_index].bin_width;

        // Perform peak interpolation
        if (peak_indices[i] > 0 && peak_indices[i] < FFT_BUFFER_SIZE / 2 - 1) {
            float32_t left_magnitude = fftMagnitude[peak_indices[i] - 1];
            float32_t center_magnitude = fftMagnitude[peak_indices[i]];
            float32_t right_magnitude = fftMagnitude[peak_indices[i] + 1];

            float32_t interpolated_index = peak_indices[i] + interpolate_peak(left_magnitude, center_magnitude, right_magnitude);

            peak_frequencies[i] = interpolated_index * bin_width;
        }

        // Store the peak information in the peak_info_array
        peak_info_array[i].index = peak_indices[i];
        peak_info_array[i].frequency = peak_frequencies[i];
        peak_info_array[i].strength = max_magnitude;
    }
    // ... (The rest of your existing code)
}
**/
