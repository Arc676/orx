/** 
 * \file orxTexture.h
 * 
 * Texture Module.
 * Allows to creates and handle textures.
 * They thus can be referenced by other structures.
 * Textures are 2D structures.
 * 
 * \todo
 */


/***************************************************************************
 orxTextures.h
 Texture module
 
 begin                : 07/12/2003
 author               : (C) Gdp
 email                : iarwain@ifrance.com
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/


#ifndef _orxTEXTURE_H_
#define _orxTEXTURE_H_

#include "orxInclude.h"

#include "graph/graph.h"
#include "math/orxMath.h"


/** Internal texture structure. */
typedef struct __orxTEXTURE_t           orxTEXTURE;


/** Inits the texture system. */
extern orxSTATUS                        orxTexture_Init();
/** Exits from the texture system. */
extern orxVOID                          orxTexture_Exit();

/** Creates an empty texture. */
extern orxTEXTURE                      *orxTexture_Create();
/** Creates a texture from a bitmap (Warning : use a different bitmap for each texture). */
extern orxTEXTURE                      *orxTexture_CreateFromBitmap(orxBITMAP *_pstBitmap);
/** Deletes a texture (Warning : it deletes referenced bitmap too!). */
extern orxSTATUS                        orxTexture_Delete(orxTEXTURE *_pstTexture);

/** Links a bitmap to a texture (Warning : use a different bitmap for each texture). */
extern orxSTATUS                        orxTexture_LinkBitmap(orxTEXTURE *_pstTexture, orxBITMAP *_pstBitmap);
/** Unlinks a bitmap from a texture (Warning : it deletes it). */
extern orxSTATUS                        orxTexture_UnlinkBitmap(orxTEXTURE *_pstTexture);


/** !!! Texture accessors !!! */


/** Corresponding bitmap get accessor. */
extern orxBITMAP                       *orxTexture_GetBitmap(orxTEXTURE *_pstTexture);

/** Texture size get accessor. */
extern orxVOID                          orxTexture_GetSize(orxTEXTURE *_pstTexture, orxVEC *_pvSize);

/** Reference coordinates set accessor (used for rendering purpose). */
extern orxVOID                          orxTexture_SetRefPoint(orxTEXTURE *_pstTexture, orxVEC *_pvRefPoint);
/** Reference coordinates get accessor (used for rendering purpose). */
extern orxVOID                          orxTexture_GetRefPoint(orxTEXTURE *_pstTexture, orxVEC *_pvRefPoint);


#endif /* _orxTEXTURE_H_ */
