/*
 * chroma_translate_filter.h
 *
 *  Created on: Jun 3, 2014
 *      Author: nlevy
 */

#ifndef CHROMA_TRANSLATE_FILTER_H_
#define CHROMA_TRANSLATE_FILTER_H_
#include "edtinc.h"
#include <stdint.h>
#include <cuda_runtime_api.h>
#include "cuda_utils.cuh"

static const int CTF_DEVICE_NUM = (2 % getDeviceCount());
static const int WIDTH = 1280;
static const int  HEIGHT = 480;
static const int  CTF_BLOCK_SIDE = 20;
static const int  PIC_SIZE = WIDTH*HEIGHT*sizeof(uint16_t);
class chroma_translate_filter
{
public:
	chroma_translate_filter();
	virtual ~chroma_translate_filter();
	uint16_t * apply_chroma_translate_filter(uint16_t * in, uint16_t * out);

private:
	uint16_t * pic_in_host;
	uint16_t * picture_device;
	uint16_t * pic_out_d;
};


#endif /* CHROMA_TRANSLATE_FILTER_H_ */
