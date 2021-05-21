# SPDX-License-Identifier: GPL-2.0
# Please keep these build lists sorted!

obj-m  += vc4.o

# core driver code
vc4-y := \
	vc4_bo.o \
	vc4_crtc.o \
	vc4_drv.o \
	vc4_dpi.o \
	vc4_dsi.o \
	vc4_fence.o \
	vc4_firmware_kms.o \
	vc4_kms.o \
	vc4_gem.o \
	vc4_hdmi.o \
	vc4_hdmi_phy.o \
	vc4_vec.o \
	vc4_hvs.o \
	vc4_irq.o \
	vc4_perfmon.o \
	vc4_plane.o \
	vc4_render_cl.o \
	vc4_trace_points.o \
	vc4_txp.o \
	vc4_v3d.o \
	vc4_validate.o \
	vc4_validate_shaders.o

KVERSION := $(shell uname -r)

all:
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) modules

clean:
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
