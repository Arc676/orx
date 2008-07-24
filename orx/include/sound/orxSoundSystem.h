/***************************************************************************
 *                                                                         *
 *   This library is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU Lesser General Public License           *
 *   as published by the Free Software Foundation; either version 2.1      *
 *   of the License, or (at your option) any later version.                *
 *                                                                         *
 ***************************************************************************/

/**
 * @file orxConfig.h
 * @date 23/02/2002
 * @author (C) Arcallians
 */

/**
 * @addtogroup Sound
 * 
 * Sound system plugin module
 * Plugin module that handles sound system
 *
 * @{
 */


#ifndef _orxSOUNDSYSTEM_H_
#define _orxSOUNDSYSTEM_H_

#include "orxInclude.h"
#include "math/orxVector.h"
#include "plugin/orxPluginCore.h"


/***************************************************************************
 * Structure declaration                                                   *
 ***************************************************************************/

/** Abstract sound structures
 */
typedef struct __orxSOUNDSYSTEM_SOUND_t   orxSOUNDSYSTEM_SOUND;
typedef struct __orxSOUNDSYSTEM_SAMPLE_t  orxSOUNDSYSTEM_SAMPLE;

/** Sound system status enum
 */
typedef enum __orxSOUNDSYSTEM_STATUS_t
{
  orxSOUNDSYSTEM_STATUS_PLAY = 0,
  orxSOUNDSYSTEM_STATUS_PAUSE,
  orxSOUNDSYSTEM_STATUS_STOP,

  orxSOUNDSYSTEM_STATUS_NUMBER,

  orxSOUNDSYSTEM_STATUS_NONE = orxENUM_NONE

} orxSOUNDSYSTEM_STATUS;

/***************************************************************************
 * Functions directly implemented by orx core
 ***************************************************************************/

/** Sound system module setup
 */
extern orxDLLAPI orxVOID                              orxSoundSystem_Setup();


/***************************************************************************
 * Functions extended by plugins
 ***************************************************************************/

extern orxDLLAPI orxSTATUS orxSoundSystem_Init();

extern orxDLLAPI orxVOID orxSoundSystem_Exit();

extern orxDLLAPI orxSOUNDSYSTEM_SAMPLE *orxSoundSystem_LoadSample(orxCONST orxSTRING _zFilename);

extern orxDLLAPI orxVOID orxSoundSystem_UnloadSample(orxSOUNDSYSTEM_SAMPLE *_pstSample);

extern orxDLLAPI orxSOUNDSYSTEM_SOUND *orxSoundSystem_CreateFromSample(orxCONST orxSOUNDSYSTEM_SAMPLE *_pstSample);

extern orxDLLAPI orxSOUNDSYSTEM_SOUND *orxSoundSystem_CreateStreamFromFile(orxCONST orxSTRING _zFilename);

extern orxDLLAPI orxVOID orxSoundSystem_Delete(orxSOUNDSYSTEM_SOUND *_pstSound);

extern orxDLLAPI orxSTATUS orxSoundSystem_Play(orxSOUNDSYSTEM_SOUND *_pstSound);

extern orxDLLAPI orxSTATUS orxSoundSystem_Pause(orxSOUNDSYSTEM_SOUND *_pstSound);

extern orxDLLAPI orxSTATUS orxSoundSystem_Stop(orxSOUNDSYSTEM_SOUND *_pstSound);

extern orxDLLAPI orxSTATUS orxSoundSystem_SetVolume(orxSOUNDSYSTEM_SOUND *_pstSound, orxFLOAT _fVolume);

extern orxDLLAPI orxSTATUS orxSoundSystem_SetPitch(orxSOUNDSYSTEM_SOUND *_pstSound, orxFLOAT _fPitch);

extern orxDLLAPI orxSTATUS orxSoundSystem_SetPosition(orxSOUNDSYSTEM_SOUND *_pstSound, orxCONST orxVECTOR *_pvPosition);

extern orxDLLAPI orxSTATUS orxSoundSystem_Loop(orxSOUNDSYSTEM_SOUND *_pstSound, orxBOOL _bLoop);

extern orxDLLAPI orxFLOAT orxSoundSystem_GetVolume(orxCONST orxSOUNDSYSTEM_SOUND *_pstSound);

extern orxDLLAPI orxFLOAT orxSoundSystem_GetPitch(orxCONST orxSOUNDSYSTEM_SOUND *_pstSound);

extern orxDLLAPI orxVECTOR *orxSoundSystem_GetPosition(orxCONST orxSOUNDSYSTEM_SOUND *_pstSound, orxVECTOR *_pvPosition);

extern orxDLLAPI orxBOOL orxSoundSystem_IsLooping(orxCONST orxSOUNDSYSTEM_SOUND *_pstSound);

extern orxDLLAPI orxFLOAT orxSoundSystem_GetDuration(orxCONST orxSOUNDSYSTEM_SOUND *_pstSound);

extern orxDLLAPI orxSOUNDSYSTEM_STATUS orxSoundSystem_GetStatus(orxCONST orxSOUNDSYSTEM_SOUND *_pstSound);

#endif /* _orxSOUNDSYSTEM_H_ */

/** @} */
