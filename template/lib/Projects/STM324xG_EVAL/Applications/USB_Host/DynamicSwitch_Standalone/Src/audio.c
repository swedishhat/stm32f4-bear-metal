/**
  ******************************************************************************
  * @file    USB_Host/DynamicSwitch_Standalone/Src/audio.c 
  * @author  MCD Application Team
  * @version V1.3.5
  * @date    03-June-2016
  * @brief   This file provides the Audio Out (playback) interface API
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright � 2016 STMicroelectronics International N.V. 
  * All rights reserved.</center></h2>
  *
  * Redistribution and use in source and binary forms, with or without 
  * modification, are permitted, provided that the following conditions are met:
  *
  * 1. Redistribution of source code must retain the above copyright notice, 
  *    this list of conditions and the following disclaimer.
  * 2. Redistributions in binary form must reproduce the above copyright notice,
  *    this list of conditions and the following disclaimer in the documentation
  *    and/or other materials provided with the distribution.
  * 3. Neither the name of STMicroelectronics nor the names of other 
  *    contributors to this software may be used to endorse or promote products 
  *    derived from this software without specific written permission.
  * 4. This software, including modifications and/or derivative works of this 
  *    software, must execute solely and exclusively on microcontroller or
  *    microprocessor devices manufactured by or for STMicroelectronics.
  * 5. Redistribution and use of this software other than as permitted under 
  *    this license is void and will automatically terminate your rights under 
  *    this license. 
  *
  * THIS SOFTWARE IS PROVIDED BY STMICROELECTRONICS AND CONTRIBUTORS "AS IS" 
  * AND ANY EXPRESS, IMPLIED OR STATUTORY WARRANTIES, INCLUDING, BUT NOT 
  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
  * PARTICULAR PURPOSE AND NON-INFRINGEMENT OF THIRD PARTY INTELLECTUAL PROPERTY
  * RIGHTS ARE DISCLAIMED TO THE FULLEST EXTENT PERMITTED BY LAW. IN NO EVENT 
  * SHALL STMICROELECTRONICS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
  * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
  * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
  * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private define ------------------------------------------------------------*/
#define AUDIO_BLOCK_SIZE    512
#define AUDIO_BLOCK_NBR     33

/* Private macro -------------------------------------------------------------*/
/* Private typedef -----------------------------------------------------------*/
typedef struct {
  uint8_t   buff[AUDIO_BLOCK_SIZE * AUDIO_BLOCK_NBR];
  int32_t   out_ptr;
  uint32_t  in_ptr;
}Audio_BufferTypeDef;

/* Private variables ---------------------------------------------------------*/
static WAV_InfoTypedef wav_info;
static FIL wav_file;
static Audio_BufferTypeDef buffer_ctl;
static int16_t file_pos = 0;

/* Private function prototypes -----------------------------------------------*/
static AUDIO_ErrorTypeDef AUDIO_GetFileInfo(uint16_t file_idx, WAV_InfoTypedef *info);

/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Starts Audio streaming.    
  * @param  idx: File index
  * @retval Audio error
  */
AUDIO_ErrorTypeDef AUDIO_Start(uint8_t idx)
{
  uint32_t bytesread;
  
  if((FileList.ptr > idx) && (BSP_SD_IsDetected()))
  {
    f_close(&wav_file);
    
    AUDIO_GetFileInfo(idx, &wav_info);
    
    audio_state = AUDIO_STATE_CONFIG;
    
    /* Set Frequency */
    USBH_AUDIO_SetFrequency(&hUSBHost, 
                            wav_info.SampleRate,
                            wav_info.NbrChannels,
                            wav_info.BitPerSample);
    
    /* Fill whole buffer at first time */
    if(f_read(&wav_file, 
              &buffer_ctl.buff[0], 
              AUDIO_BLOCK_SIZE *  AUDIO_BLOCK_NBR, 
              (void *)&bytesread) == FR_OK)
    { 
      if(bytesread != 0)
      {
        return AUDIO_ERROR_NONE;
      }
    }
    
    buffer_ctl.in_ptr = 0;
  }
  return AUDIO_ERROR_IO;
}

/**
  * @brief  Manages Audio process. 
  * @param  None
  * @retval Audio error
  */
AUDIO_ErrorTypeDef AUDIO_Process(void)
{
  int32_t diff;
  uint32_t bytesread, elapsed_time; 
  static uint32_t prev_elapsed_time = 0xFFFFFFFF;
  uint8_t str [10];  
  
  switch(audio_state)
  {
  case AUDIO_STATE_PLAY: 
   if((buffer_ctl.out_ptr = USBH_AUDIO_GetOutOffset(&hUSBHost)) < 0) /* End of file */
   {    
     audio_state = AUDIO_STATE_NEXT;
   }
   else if(buffer_ctl.out_ptr >= (AUDIO_BLOCK_SIZE * AUDIO_BLOCK_NBR)) /* End of buffer */
   {
     USBH_AUDIO_ChangeOutBuffer(&hUSBHost, &buffer_ctl.buff[0]);
   }
   else    
   {
     diff = buffer_ctl.out_ptr - buffer_ctl.in_ptr;
     
     if(diff < 0)
     {
       diff = AUDIO_BLOCK_SIZE * AUDIO_BLOCK_NBR + diff;
     }
     
     if(diff >= (AUDIO_BLOCK_SIZE * AUDIO_BLOCK_NBR / 2))
     {
       buffer_ctl.in_ptr += AUDIO_BLOCK_SIZE;
       
       if( buffer_ctl.in_ptr >= (AUDIO_BLOCK_SIZE * AUDIO_BLOCK_NBR))
       {
         buffer_ctl.in_ptr = 0;
       }
       
       if(f_read(&wav_file, 
                 &buffer_ctl.buff[buffer_ctl.in_ptr], 
                 AUDIO_BLOCK_SIZE, 
                 (void *)&bytesread) != FR_OK)
       { 
         return AUDIO_ERROR_IO;       
       }      
     }
   }
   
   /* Display elapsed time */
    elapsed_time = wav_file.fptr / wav_info.ByteRate; 
    if(prev_elapsed_time != elapsed_time)
    {
      prev_elapsed_time = elapsed_time;
      sprintf((char *)str, "[%02lu:%02lu]", elapsed_time /60, elapsed_time%60);
      BSP_LCD_SetTextColor(LCD_COLOR_CYAN); 
      BSP_LCD_DisplayStringAt(263, LINE(8), str, LEFT_MODE);
      BSP_LCD_SetTextColor(LCD_COLOR_WHITE); 
    } 
    break;
    
  case AUDIO_STATE_NEXT:
    if(++file_pos >= FileList.ptr)
    {
       file_pos = 0; 
    }
    USBH_AUDIO_Stop(&hUSBHost);
    AUDIO_Start(file_pos);
    break;    

  case AUDIO_STATE_PREVIOUS:
    if(--file_pos < 0)
    {
       file_pos = FileList.ptr - 1; 
    }
    USBH_AUDIO_Stop(&hUSBHost);
    AUDIO_Start(file_pos);
    break;   
    
  case AUDIO_STATE_PAUSE:
    BSP_LCD_DisplayStringAt(250, LINE(14), (uint8_t *)"  [PAUSE]", LEFT_MODE);
    USBH_AUDIO_Suspend(&hUSBHost);
    audio_state = AUDIO_STATE_WAIT;
    break;
    
  case AUDIO_STATE_RESUME:
    BSP_LCD_DisplayStringAt(250, LINE(14), (uint8_t *)"  [PLAY ]", LEFT_MODE);
    USBH_AUDIO_Resume(&hUSBHost);
    audio_state = AUDIO_STATE_PLAY;
    break;
    
  case AUDIO_STATE_VOLUME_UP:    
    USBH_AUDIO_SetVolume(&hUSBHost, VOLUME_UP);
    audio_state = AUDIO_STATE_PLAY;
    break;
    
  case AUDIO_STATE_VOLUME_DOWN:    
    USBH_AUDIO_SetVolume (&hUSBHost, VOLUME_DOWN);
    audio_state = AUDIO_STATE_PLAY;
    break;
      
  case AUDIO_STATE_WAIT:
  case AUDIO_STATE_CONFIG:    
  case AUDIO_STATE_IDLE:
  case AUDIO_STATE_INIT:    
  default:
    break;
  }
  return AUDIO_ERROR_NONE;
}

/**
  * @brief  Stops Audio streaming.
  * @param  None
  * @retval Audio error
  */
AUDIO_ErrorTypeDef AUDIO_Stop(void)
{
  audio_state = AUDIO_STATE_IDLE;
  USBH_AUDIO_Stop(&hUSBHost);
  file_pos = 0;
  f_close(&wav_file);
  return AUDIO_ERROR_NONE;
}

/**
  * @brief  Probes the play back joystick state.
  * @param  state: Joystick state
  * @retval None
  */
void AUDIO_PlaybackProbeKey(JOYState_TypeDef state)
{
  /* Handle File List Selection */ 
  if(state == JOY_UP)
  {
    if(audio_state == AUDIO_STATE_PLAY)
    {
      audio_state = AUDIO_STATE_VOLUME_UP;
    }
  }
  else if(state == JOY_DOWN)
  {
    if(audio_state == AUDIO_STATE_PLAY)
    {
      audio_state = AUDIO_STATE_VOLUME_DOWN;
    }
  }
  else if(state == JOY_RIGHT)
  {
    audio_state = AUDIO_STATE_NEXT;
  }  
  else if(state == JOY_LEFT)
  {
    audio_state = AUDIO_STATE_PREVIOUS;
  }    
  else if(state == JOY_SEL)
  {
    audio_state = (audio_state == AUDIO_STATE_WAIT) ? AUDIO_STATE_RESUME : AUDIO_STATE_PAUSE;
  }    
}

/**
  * @brief  Gets the file info.
  * @param  file_idx: File index
  * @param  info: Pointer to WAV file info
  * @retval Audio error
  */
static AUDIO_ErrorTypeDef AUDIO_GetFileInfo(uint16_t file_idx, WAV_InfoTypedef *info)
{
  uint8_t str [FILEMGR_FILE_NAME_SIZE + 20];  
  uint32_t bytesread;
  uint32_t duration;
  
  if(f_open(&wav_file, (char *)FileList.file[file_idx].name, FA_OPEN_EXISTING | FA_READ) == FR_OK) 
  {
    /* Fill the buffer to Send */
    if(f_read(&wav_file, info, sizeof(WAV_InfoTypedef), (void *)&bytesread) == FR_OK)
    {
      BSP_LCD_SetTextColor(LCD_COLOR_WHITE); 
      sprintf((char *)str, "Playing file (%d/%d): %s", 
              file_idx + 1, FileList.ptr,
              (char *)FileList.file[file_idx].name);
      BSP_LCD_ClearStringLine(4);
      BSP_LCD_DisplayStringAtLine(4 ,str);

      BSP_LCD_SetTextColor(LCD_COLOR_CYAN); 
      sprintf((char *)str , "Sample rate : %lu Hz", info->SampleRate);
      BSP_LCD_ClearStringLine(6);
      BSP_LCD_DisplayStringAtLine(6 ,str);
      
      sprintf((char *)str , "Channels number : %d", info->NbrChannels);
      BSP_LCD_ClearStringLine(7);      
      BSP_LCD_DisplayStringAtLine(7 ,str);
      
      duration = info->FileSize / info->ByteRate; 
      sprintf((char *)str , "File Size : %lu MB [%02lu:%02lu]", info->FileSize/1024/1024, duration/60, duration%60 );
      BSP_LCD_ClearStringLine(8);
      BSP_LCD_DisplayStringAtLine(8 ,str);
      BSP_LCD_DisplayStringAt(263, LINE(8), (uint8_t *)"[00:00]", LEFT_MODE);
      BSP_LCD_SetTextColor(LCD_COLOR_WHITE); 
      return AUDIO_ERROR_NONE;
    }
    f_close(&wav_file);
  }
  return AUDIO_ERROR_IO;
}

/**
  * @brief  Informs user that settings have been changed.
  * @param  phost: Host Handle
  * @retval None
  */
void USBH_AUDIO_FrequencySet(USBH_HandleTypeDef *phost)
{
 if(audio_state == AUDIO_STATE_CONFIG)
 {
   /* Start first read */
   USBH_AUDIO_Play (&hUSBHost, &buffer_ctl.buff[0], wav_info.FileSize);
   BSP_LCD_DisplayStringAt(250, LINE(14), (uint8_t *)"  [PLAY ]", LEFT_MODE);
   audio_state = AUDIO_STATE_PLAY;
 }
}

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/