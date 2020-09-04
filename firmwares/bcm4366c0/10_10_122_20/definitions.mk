NEXMON_CHIP=CHIP_VER_BCM4366c0
NEXMON_CHIP_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_CHIP)`
NEXMON_FW_VERSION=FW_VER_10_10_122_20
NEXMON_FW_VERSION_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_FW_VERSION)`
RXE_RXHDR_LEN=62
RXE_RXHDR_EXTRA=0

NEXMON_ARCH=armv7-r

RAM_FILE=dlarray_4366c0.bin
RAMSTART=0x200000
# needs to be defined
RAMSIZE=0x240000

ROM_FILE=rom.bin
ROMSTART=0x0
ROMSIZE=0xc8400

HNDRTE_RECLAIM_UCODES_END=0x2C7394
HNDRTE_RECLAIM_UCODES_END_PTR=0x20CB6C

PATCHSIZE=0x4000
PATCHSTART=$$(($(HNDRTE_RECLAIM_UCODES_END) - $(PATCHSIZE)))

# original ucode start and size
NONMUUCODESTART = 0x2ACB64
NONMUUCODESIZE = 0xAA58
NONMUUCODESTART_PTR = 0x244A9C
NONMUUCODESIZE_PTR = 0x244A98
WLC_NONMUUCODE_WRITE_BL_HOOK_ADDR=0x244A2A

NONMUUCODEXSTART = 0x2B75BC
NONMUUCODEXSIZE = 0x2640
NONMUUCODEXSTART_PTR = 0x244AA0
NONMUUCODEXSIZE_PTR = 0x244AA4
WLC_NONMUUCODEX_WRITE_BL_HOOK_ADDR=0x244A36

MUUCODESTART = 0x2B9C04
MUUCODESIZE = 0xAF40
MUUCODESTART_PTR = 0x244AC0
MUUCODESIZE_PTR = 0x244ABC
WLC_MUUCODE_WRITE_BL_HOOK_ADDR=0x244A6E

MUUCODEXSTART = 0x2C4B4C
MUUCODEXSIZE = 0x2848
MUUCODEXSTART_PTR = 0x244AC4
MUUCODEXSIZE_PTR = 0x244AC8
# same as WLC_NONMUUCODEX_WRITE_BL_HOOK_ADDR as function only called once
WLC_MUUCODEX_WRITE_BL_HOOK_ADDR=0x244A36

# original template ram start and size
# needs to be defined
TEMPLATERAMSTART=0
TEMPLATERAMSIZE=0

FP_DATA_END_PTR=0x2E5024
# fp_check_success
FP_CONFIG_BASE_PTR_1=0x2E358C
FP_CONFIG_END_PTR_1=0x2E3590
# fp_apply_patches
FP_CONFIG_BASE_PTR_2=0x2E36B4
FP_CONFIG_END_PTR_2=0x2E36B0
FP_CONFIG_SIZE=0x2000
FP_CONFIG_BASE=$$(($(PATCHSTART) - $(FP_CONFIG_SIZE)))

FP_DATA_BASE=0x202000
FP_CONFIG_ORIGBASE=0x204000
FP_CONFIG_ORIGEND=0x204800

VERSION_PTR=0x2EF594