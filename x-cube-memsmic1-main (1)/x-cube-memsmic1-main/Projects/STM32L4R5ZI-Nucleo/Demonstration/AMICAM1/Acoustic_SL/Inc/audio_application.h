/**
  ******************************************************************************
  * @file    audio_application.h
  * @author  SRA
  * @version v1.2.0
  * @date    17-Sep-2021
  * @brief   Header for audio_application.c module.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __AUDIO_APPLICATION_H
#define __AUDIO_APPLICATION_H

/* Includes ------------------------------------------------------------------*/
#include "cube_hal.h"

/** @addtogroup X_CUBE_MEMSMIC1_Applications
  * @{
  */

/** @addtogroup ACOUSTIC_SL_Example
  * @{
  */

/** @defgroup AUDIO_APPLICATION
  * @{
  */

/** @defgroup AUDIO_APPLICATION_Private_Types
  * @{
 */

/**
  * @}
  */

/* Exported constants --------------------------------------------------------*/
/* Exported macro ------------------------------------------------------------*/
/** @defgroup AUDIO_APPLICATION_Exported_Defines
  * @{
  */

/*Uncomment this define if you want to configure and start acquisition
independentrly from USB functionalities*/
#define DISABLE_USB_DRIVEN_ACQUISITION

#define ONBOARD_MICS 210
#define EXT_COUPON 147

/**
  * @}
  */
/* Exported functions ------------------------------------------------------- */
void Audio_Libraries_Init(void);
void Error_Handler(void);
void AudioProcess(void);
void SW_IRQ_Tasks_Init(void);
void SW_Task1_Callback(void);
void SW_Task2_Callback(void);
void SW_Task1_Start(void);
void SW_Task2_Start(void);


/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */



#endif /* __AUDIO_APPLICATION_H */


