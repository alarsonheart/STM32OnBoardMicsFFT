/**
  ******************************************************************************
  * @file    cca02m2_conf.h
  * @author  SRA
  * @version v1.0.0
  * @date    17-Jul-2020
  * @brief   This file contains definitions for the MEMSMIC1 applications
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
#ifndef CCA02M2_CONF_H__
#define CCA02M2_CONF_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f7xx_hal.h"
#include "nucleo_f746zg_bus.h"
#include "nucleo_f746zg_errno.h"


/* The N_MS value defines the number of millisecond to be processed at each AudioProcess call,
that must be consistent with the N_MS_PER_INTERRUPT defined in the audio driver
(cca02m2_audio.h).
The default value of the N_MS_PER_INTERRUPT directive in the driver is set to 1,
for backward compatibility: leaving this values as it is allows to avoid any
modification in the application layer developed with the older versions of the driver */

#define N_MS (N_MS_PER_INTERRUPT)

#define AUDIO_IN_CHANNELS 2
#define AUDIO_IN_SAMPLING_FREQUENCY 48000

#define AUDIO_IN_BUFFER_SIZE            DEFAULT_AUDIO_IN_BUFFER_SIZE
#define AUDIO_VOLUME_INPUT              64U
#define CCA02M2_AUDIO_INSTANCE 0U
#define CCA02M2_AUDIO_IN_IT_PRIORITY    6U

#if (AUDIO_IN_SAMPLING_FREQUENCY == 8000)
#define MAX_DECIMATION_FACTOR 160
#else
#define MAX_DECIMATION_FACTOR 128
#endif  /* AUDIO_IN_SAMPLING_FREQUENCY */

/*Uncomment to enable High Performance mode when using MP23DB01HP external coupon*/
#define ENABLE_HIGH_PERFORMANCE_MODE 1U
#define AUDIO_IN_BIT_DEPTH AUDIO_RESOLUTION_24b

#ifdef __cplusplus
}
#endif

#endif /* CCA02M2_CONF_H__*/


