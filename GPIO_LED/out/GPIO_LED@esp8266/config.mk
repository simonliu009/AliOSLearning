AOS_SDK_MAKEFILES           		+= E:\Documents\alios\AliOS-Things\app\example//GPIO_LED/GPIO_LED.mk ./board/esp8266/esp8266.mk ././platform/mcu/esp8266/esp8266.mk ././osal/osal.mk ./kernel/init/init.mk E:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/auto_component/auto_component.mk ./kernel/yloop/yloop.mk ./tools/cli/cli.mk ././middleware/common/common.mk ./kernel/rhino/fs/kv/kv.mk ./utility/libc/libc.mk ././network/lwip/lwip.mk ./security/alicrypto/alicrypto.mk ./kernel/hal/hal.mk ././middleware/uagent/uota/src/recovery/recovery.mk ./utility/digest_algorithm/digest_algorithm.mk ./kernel/rhino/rhino.mk ././platform/arch/xtensa/lx106/lx106.mk ././middleware/alink/cloud/cloud.mk ././osal/espos/espos.mk ./utility/log/log.mk ./kernel/rhino/vfs/vfs.mk ././middleware/uagent/uota/src/recovery/nbpatch/nbpatch.mk ././middleware/uagent/uota/src/recovery/xz-embedded/xz-embedded.mk ././kernel/rhino/vfs/device/device.mk
TOOLCHAIN_NAME            		:= GCC
AOS_SDK_LDFLAGS             		+= -Wl,--gc-sections -Wl,--cref -nostdlib -Lplatform/mcu/esp8266/bsp/lib -Wl,--no-check-sections -Wl,--gc-sections -mtext-section-literals -fno-builtin-printf -Wl,-static -u call_user_start -Wl,-EL -mlongcalls -Lplatform/mcu/esp8266/bsp/ld
AOS_SDK_LDS_FILES                     += platform/mcu/esp8266/bsp/ld/eagle.app.v6.new.1024.app1.ld
AOS_SDK_LDS_INCLUDES                  += 
RESOURCE_CFLAGS					+= -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0 -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\" -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"
AOS_SDK_LINK_SCRIPT         		+= 
AOS_SDK_LINK_SCRIPT_CMD    	 	+= 
AOS_SDK_PREBUILT_LIBRARIES 	 	+= ././platform/mcu/esp8266/bsp/lib/libhal.a ././platform/mcu/esp8266/bsp/lib/libcrypto.a ././platform/mcu/esp8266/bsp/lib/libmain.a ././platform/mcu/esp8266/bsp/lib/libcirom.a ././platform/mcu/esp8266/bsp/lib/libnet80211.a ././platform/mcu/esp8266/bsp/lib/libpp.a ././platform/mcu/esp8266/bsp/lib/libwpa.a ././platform/mcu/esp8266/bsp/lib/libphy.a ././platform/mcu/esp8266/bsp/lib/libgcc.a ././platform/mcu/esp8266/bsp/lib/liblwip.a
AOS_SDK_CERTIFICATES       	 	+= 
AOS_SDK_PRE_APP_BUILDS      		+= 
AOS_SDK_LINK_FILES          		+=                                                  
AOS_SDK_INCLUDES           	 	+=                                                -IE:\Documents\alios\AliOS-Things\app\example//GPIO_LED/./ -I./board/esp8266/. -I././platform/mcu/esp8266/bsp/include -I././platform/mcu/esp8266/bsp/include/xtensa -I././platform/mcu/esp8266/bsp/include/espressif -I././platform/mcu/esp8266/bsp/include/espressif/esp8266 -I././platform/mcu/esp8266/bsp/include/lwip -I././platform/mcu/esp8266/bsp/include/lwip/ipv4 -I././platform/mcu/esp8266/bsp/include/lwip/ipv6 -I././platform/mcu/esp8266/bsp/include/driver -I././platform/mcu/esp8266/common -I././platform/mcu/esp8266/hal/rec -I././osal/./mico/include -I././osal/./include -I./kernel/init/include -I./kernel/yloop/include -I./tools/cli/include -I././middleware/common/include -I./kernel/rhino/fs/kv/include -I./security/alicrypto/./libalicrypto/inc -I./kernel/hal/include -I./kernel/hal/../rhino -I./kernel/hal/../rhino/hal/soc -I././middleware/uagent/uota/src/recovery/. -I./utility/digest_algorithm/. -I./kernel/rhino/core/include -I./kernel/rhino/uspace/include -I./kernel/rhino/debug/include -I./kernel/rhino/hal/soc -I./kernel/rhino/./ -I././platform/arch/xtensa/lx106/. -I././platform/arch/xtensa/lx106/./include -I././platform/arch/xtensa/lx106/./include/frxt -I././middleware/alink/cloud/include -I././osal/espos/include -I./utility/log/include -I./kernel/rhino/vfs/include -I.//network/include -I./app/example/GPIO_LED -I./kernel/hal/include/hal -I./kernel/hal/include/hal/soc
AOS_SDK_DEFINES             		+=                       -DBUILD_BIN -DAOS_NO_WIFI -DLOCAL_PORT_ENHANCED_RAND -DWITH_VENDOR_LWIP -DCONFIG_AOS_KV_BUFFER_SIZE=8192 -DCONFIG_ESP_LWIP -DCOAP_WITH_YLOOP -DMBEDTLS_AES_ROM_TABLES -DOSAL_RHINO -DAOS_LOOP -DHAVE_NOT_ADVANCED_FORMATE -DCONFIG_AOS_CLI -DAOS_FRAMEWORK_COMMON -DAOS_KV -DWITH_LWIP -DCONFIG_ALICRYPTO -DAOS_HAL -DIS_ESP8266 -DRECOVERY_FLASH_COPY -DCONFIG_CLOUD -DAOS_VFS -DMCU_FAMILY=\"esp8266\"
COMPONENTS                		:= GPIO_LED board_esp8266 esp8266 osal kernel_init auto_component yloop cli common kv newlib_stub lwip alicrypto hal recovery digest_algorithm rhino xtensa cloud espos log vfs nbpatch xz-embedded vfs_device
PLATFORM_DIRECTORY        		:= esp8266
APP_FULL                  		:= GPIO_LED
PLATFORM                  		:= esp8266
HOST_MCU_FAMILY                  	:= esp8266
SUPPORT_BINS                          := no
APP                       		:= GPIO_LED
HOST_OPENOCD              		:= esp8266
JTAG              		        := jlink_swd
HOST_ARCH                 		:= xtensa
NO_BUILD_BOOTLOADER           	:= 
NO_BOOTLOADER_REQUIRED         	:= 
GPIO_LED_LOCATION         := E:\Documents\alios\AliOS-Things\app\example//GPIO_LED/
board_esp8266_LOCATION         := ./board/esp8266/
esp8266_LOCATION         := ././platform/mcu/esp8266/
osal_LOCATION         := ././osal/
kernel_init_LOCATION         := ./kernel/init/
auto_component_LOCATION         := E:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/auto_component/
yloop_LOCATION         := ./kernel/yloop/
cli_LOCATION         := ./tools/cli/
common_LOCATION         := ././middleware/common/
kv_LOCATION         := ./kernel/rhino/fs/kv/
newlib_stub_LOCATION         := ./utility/libc/
lwip_LOCATION         := ././network/lwip/
alicrypto_LOCATION         := ./security/alicrypto/
hal_LOCATION         := ./kernel/hal/
recovery_LOCATION         := ././middleware/uagent/uota/src/recovery/
digest_algorithm_LOCATION         := ./utility/digest_algorithm/
rhino_LOCATION         := ./kernel/rhino/
xtensa_LOCATION         := ././platform/arch/xtensa/lx106/
cloud_LOCATION         := ././middleware/alink/cloud/
espos_LOCATION         := ././osal/espos/
log_LOCATION         := ./utility/log/
vfs_LOCATION         := ./kernel/rhino/vfs/
nbpatch_LOCATION         := ././middleware/uagent/uota/src/recovery/nbpatch/
xz-embedded_LOCATION         := ././middleware/uagent/uota/src/recovery/xz-embedded/
vfs_device_LOCATION         := ././kernel/rhino/vfs/device/
GPIO_LED_SOURCES          += GPIO_LED.c 
board_esp8266_SOURCES          += board.c 
esp8266_SOURCES          += aos/hook_impl.c aos/soc_impl.c aos/trace_impl.c bsp/driver/gpio.c bsp/driver/hw_timer.c bsp/driver/i2c_master.c bsp/driver/interrupt.c bsp/driver/spi_interface.c bsp/driver/uart.c bsp/entry.c bsp/heap_iram.c bsp/key.c bsp/syscall.c bsp/wdt.c hal/flash.c hal/gpio.c hal/misc.c hal/ota_port.c hal/rec/rec_flash.c hal/rec/rec_sys.c hal/rec/rec_uart.c hal/uart.c hal/upgrade_lib.c hal/wifi_port.c 
osal_SOURCES          += aos/aos_rhino.c 
kernel_init_SOURCES          += aos_init.c 
auto_component_SOURCES          +=  component_init.c testcase_register.c
yloop_SOURCES          += device.c local_event.c select.c yloop.c 
cli_SOURCES          += cli.c dumpsys.c 
common_SOURCES          += main.c version.c 
kv_SOURCES          += kv_osal.c kvmgr.c 
newlib_stub_SOURCES          += newlib_stub.c 
lwip_SOURCES          += 
alicrypto_SOURCES          += ./libalicrypto/ali_crypto.c ./libalicrypto/mbed/asym/rsa.c ./libalicrypto/mbed/cipher/aes.c ./libalicrypto/mbed/hash/hash.c ./libalicrypto/mbed/mac/hmac.c ./libalicrypto/sw/ali_crypto_rand.c ./mbedtls/library/aes.c ./mbedtls/library/asn1parse.c ./mbedtls/library/bignum.c ./mbedtls/library/hash_wrap.c ./mbedtls/library/hmac.c ./mbedtls/library/mbedtls_alt.c ./mbedtls/library/md5.c ./mbedtls/library/oid.c ./mbedtls/library/rsa.c ./mbedtls/library/sha1.c ./mbedtls/library/sha256.c ./mbedtls/library/threading.c 
hal_SOURCES          += ota.c wifi.c 
recovery_SOURCES          += rec_libc.c rec_main.c 
digest_algorithm_SOURCES          += CheckSumUtils.c crc.c digest_algorithm.c md5.c 
rhino_SOURCES          += common/k_fifo.c common/k_trace.c core/k_buf_queue.c core/k_dyn_mem_proc.c core/k_err.c core/k_event.c core/k_idle.c core/k_mm.c core/k_mm_blk.c core/k_mm_debug.c core/k_mutex.c core/k_obj.c core/k_pend.c core/k_queue.c core/k_ringbuf.c core/k_sched.c core/k_sem.c core/k_stats.c core/k_sys.c core/k_task.c core/k_task_sem.c core/k_tick.c core/k_time.c core/k_timer.c core/k_workqueue.c debug/k_backtrace.c debug/k_infoget.c debug/k_overview.c debug/k_panic.c uspace/u_task.c 
xtensa_SOURCES          += backtrace.c panic.c port.c xtensa_panic.S xtensa_vectors.S 
cloud_SOURCES          += cloud.c 
espos_SOURCES          += platform/rhino/espos_misc.c platform/rhino/espos_mutex.c platform/rhino/espos_queue.c platform/rhino/espos_scheduler.c platform/rhino/espos_semaphore.c platform/rhino/espos_spinlock.c platform/rhino/espos_task.c platform/rhino/espos_time.c platform/rhino/espos_timer.c 
log_SOURCES          += log.c 
vfs_SOURCES          += vfs.c vfs_file.c vfs_inode.c vfs_register.c 
nbpatch_SOURCES          += flash_hal.c nbpatch.c nbpatch_io.c nbpatch_main.c rec_md5.c rec_verify_fw.c xzdec.c 
xz-embedded_SOURCES          += linux/lib/xz/xz_crc32.c linux/lib/xz/xz_dec_lzma2.c linux/lib/xz/xz_dec_stream.c 
vfs_device_SOURCES          += vfs_adc.c vfs_gpio.c vfs_i2c.c vfs_pwm.c vfs_rtc.c vfs_spi.c vfs_uart.c vfs_wdg.c 
GPIO_LED_CHECK_HEADERS    += 
board_esp8266_CHECK_HEADERS    += 
esp8266_CHECK_HEADERS    += 
osal_CHECK_HEADERS    += 
kernel_init_CHECK_HEADERS    += 
auto_component_CHECK_HEADERS    += 
yloop_CHECK_HEADERS    += 
cli_CHECK_HEADERS    += 
common_CHECK_HEADERS    += 
kv_CHECK_HEADERS    += 
newlib_stub_CHECK_HEADERS    += 
lwip_CHECK_HEADERS    += 
alicrypto_CHECK_HEADERS    += 
hal_CHECK_HEADERS    += 
recovery_CHECK_HEADERS    += 
digest_algorithm_CHECK_HEADERS    += 
rhino_CHECK_HEADERS    += 
xtensa_CHECK_HEADERS    += 
cloud_CHECK_HEADERS    += 
espos_CHECK_HEADERS    += 
log_CHECK_HEADERS    += 
vfs_CHECK_HEADERS    += 
nbpatch_CHECK_HEADERS    += 
xz-embedded_CHECK_HEADERS    += 
vfs_device_CHECK_HEADERS    += 
GPIO_LED_INCLUDES         := 
board_esp8266_INCLUDES         := 
esp8266_INCLUDES         := 
osal_INCLUDES         := 
kernel_init_INCLUDES         := 
auto_component_INCLUDES         := 
yloop_INCLUDES         := 
cli_INCLUDES         := 
common_INCLUDES         := 
kv_INCLUDES         := 
newlib_stub_INCLUDES         := 
lwip_INCLUDES         := 
alicrypto_INCLUDES         := 
hal_INCLUDES         := 
recovery_INCLUDES         := 
digest_algorithm_INCLUDES         := 
rhino_INCLUDES         := 
xtensa_INCLUDES         := 
cloud_INCLUDES         := 
espos_INCLUDES         := 
log_INCLUDES         := 
vfs_INCLUDES         := 
nbpatch_INCLUDES         := -I././middleware/uagent/uota/src/recovery/nbpatch/../xz-embedded/linux/include/linux -I././middleware/uagent/uota/src/recovery/nbpatch/../xz-embedded/linux/lib/xz -I././middleware/uagent/uota/src/recovery/nbpatch/../xz-embedded/userspace -I././middleware/uagent/uota/src/recovery/nbpatch/../xz-embedded/linux/include/linux -I././middleware/uagent/uota/src/recovery/nbpatch/../xz-embedded/linux/lib/xz -I././middleware/uagent/uota/src/recovery/nbpatch/../xz-embedded/userspace
xz-embedded_INCLUDES         := -I././middleware/uagent/uota/src/recovery/xz-embedded/linux/include/linux -I././middleware/uagent/uota/src/recovery/xz-embedded/linux/lib/xz -I././middleware/uagent/uota/src/recovery/xz-embedded/userspace
vfs_device_INCLUDES         := -I././kernel/rhino/vfs/device/../include/device/ -I././kernel/rhino/vfs/device/../include/ -I././kernel/rhino/vfs/device/../../hal/soc/ -I././kernel/rhino/vfs/device/../include/device/ -I././kernel/rhino/vfs/device/../include/ -I././kernel/rhino/vfs/device/../../hal/soc/
GPIO_LED_DEFINES          := 
board_esp8266_DEFINES          := 
esp8266_DEFINES          := 
osal_DEFINES          := 
kernel_init_DEFINES          := 
auto_component_DEFINES          := 
yloop_DEFINES          := 
cli_DEFINES          := 
common_DEFINES          := 
kv_DEFINES          := 
newlib_stub_DEFINES          := 
lwip_DEFINES          := 
alicrypto_DEFINES          := 
hal_DEFINES          := 
recovery_DEFINES          := 
digest_algorithm_DEFINES          := 
rhino_DEFINES          := 
xtensa_DEFINES          := 
cloud_DEFINES          := 
espos_DEFINES          := 
log_DEFINES          := 
vfs_DEFINES          := 
nbpatch_DEFINES          := 
xz-embedded_DEFINES          := 
vfs_device_DEFINES          := 
GPIO_LED_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
board_esp8266_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
esp8266_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" -std=gnu99 -DENABLE_WIFI -Iplatform/mcu/esp8266/bsp
osal_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" -Wall -Werror -Wall -Werror
kernel_init_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
auto_component_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
yloop_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" -Wall -Werror -Wall -Werror
cli_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" -Wall -Werror -Wall -Werror
common_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
kv_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" -Wall -Werror -Wall -Werror
newlib_stub_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
lwip_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
alicrypto_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" -DCONFIG_CRYPT_MBED=1 -DCONFIG_DBG_CRYPT=1 -W -Wdeclaration-after-statement -D_FILE_OFFSET_BITS=64 -DCONFIG_CRYPT_MBED=1 -DCONFIG_DBG_CRYPT=1 -W -Wdeclaration-after-statement -D_FILE_OFFSET_BITS=64
hal_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" -Wall -Werror -Wall -Werror
recovery_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" -Wall -Werror -Wall -Werror
digest_algorithm_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
rhino_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" -Wall -Werror -Wall -Werror
xtensa_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
cloud_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
espos_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
log_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
vfs_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" -Wall -Werror -Wall -Werror
nbpatch_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
xz-embedded_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
vfs_device_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP8266\" -DSYSINFO_DEVICE_NAME=\"ESP8266\" -DBOARD_ESP8266 -u call_user_start -fno-inline-functions -ffunction-sections -fdata-sections -mlongcalls -DESPOS_FOR_ESP8266 -Wl,-static -DXT_USE_THREAD_SAFE_CLIB=0      -DSYSINFO_APP_VERSION=\"app-1.0.0-20190208.2338\"        -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
GPIO_LED_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
board_esp8266_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
esp8266_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
osal_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
kernel_init_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
auto_component_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
yloop_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
cli_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
common_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
kv_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
newlib_stub_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
lwip_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
alicrypto_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
hal_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
recovery_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
digest_algorithm_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
rhino_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
xtensa_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
cloud_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
espos_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
log_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
vfs_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
nbpatch_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
xz-embedded_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
vfs_device_CXXFLAGS         :=                          -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -IE:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/resources/ -DPLATFORM=\"esp8266\" 
GPIO_LED_ASMFLAGS         :=                          
board_esp8266_ASMFLAGS         :=                          
esp8266_ASMFLAGS         :=                          
osal_ASMFLAGS         :=                          
kernel_init_ASMFLAGS         :=                          
auto_component_ASMFLAGS         :=                          
yloop_ASMFLAGS         :=                          
cli_ASMFLAGS         :=                          
common_ASMFLAGS         :=                          
kv_ASMFLAGS         :=                          
newlib_stub_ASMFLAGS         :=                          
lwip_ASMFLAGS         :=                          
alicrypto_ASMFLAGS         :=                          
hal_ASMFLAGS         :=                          
recovery_ASMFLAGS         :=                          
digest_algorithm_ASMFLAGS         :=                          
rhino_ASMFLAGS         :=                          
xtensa_ASMFLAGS         :=                          
cloud_ASMFLAGS         :=                          
espos_ASMFLAGS         :=                          
log_ASMFLAGS         :=                          
vfs_ASMFLAGS         :=                          
nbpatch_ASMFLAGS         :=                          
xz-embedded_ASMFLAGS         :=                          
vfs_device_ASMFLAGS         :=                          
GPIO_LED_RESOURCES        := 
board_esp8266_RESOURCES        := 
esp8266_RESOURCES        := 
osal_RESOURCES        := 
kernel_init_RESOURCES        := 
auto_component_RESOURCES        := 
yloop_RESOURCES        := 
cli_RESOURCES        := 
common_RESOURCES        := 
kv_RESOURCES        := 
newlib_stub_RESOURCES        := 
lwip_RESOURCES        := 
alicrypto_RESOURCES        := 
hal_RESOURCES        := 
recovery_RESOURCES        := 
digest_algorithm_RESOURCES        := 
rhino_RESOURCES        := 
xtensa_RESOURCES        := 
cloud_RESOURCES        := 
espos_RESOURCES        := 
log_RESOURCES        := 
vfs_RESOURCES        := 
nbpatch_RESOURCES        := 
xz-embedded_RESOURCES        := 
vfs_device_RESOURCES        := 
GPIO_LED_MAKEFILE         := E:\Documents\alios\AliOS-Things\app\example//GPIO_LED/GPIO_LED.mk
board_esp8266_MAKEFILE         := ./board/esp8266/esp8266.mk
esp8266_MAKEFILE         := ././platform/mcu/esp8266/esp8266.mk
osal_MAKEFILE         := ././osal/osal.mk
kernel_init_MAKEFILE         := ./kernel/init/init.mk
auto_component_MAKEFILE         := E:/Documents/alios/AliOS-Things/app/example/GPIO_LED/out/GPIO_LED@esp8266/auto_component/auto_component.mk
yloop_MAKEFILE         := ./kernel/yloop/yloop.mk
cli_MAKEFILE         := ./tools/cli/cli.mk
common_MAKEFILE         := ././middleware/common/common.mk
kv_MAKEFILE         := ./kernel/rhino/fs/kv/kv.mk
newlib_stub_MAKEFILE         := ./utility/libc/libc.mk
lwip_MAKEFILE         := ././network/lwip/lwip.mk
alicrypto_MAKEFILE         := ./security/alicrypto/alicrypto.mk
hal_MAKEFILE         := ./kernel/hal/hal.mk
recovery_MAKEFILE         := ././middleware/uagent/uota/src/recovery/recovery.mk
digest_algorithm_MAKEFILE         := ./utility/digest_algorithm/digest_algorithm.mk
rhino_MAKEFILE         := ./kernel/rhino/rhino.mk
xtensa_MAKEFILE         := ././platform/arch/xtensa/lx106/lx106.mk
cloud_MAKEFILE         := ././middleware/alink/cloud/cloud.mk
espos_MAKEFILE         := ././osal/espos/espos.mk
log_MAKEFILE         := ./utility/log/log.mk
vfs_MAKEFILE         := ./kernel/rhino/vfs/vfs.mk
nbpatch_MAKEFILE         := ././middleware/uagent/uota/src/recovery/nbpatch/nbpatch.mk
xz-embedded_MAKEFILE         := ././middleware/uagent/uota/src/recovery/xz-embedded/xz-embedded.mk
vfs_device_MAKEFILE         := ././kernel/rhino/vfs/device/device.mk
GPIO_LED_PRE_BUILD_TARGETS:= 
board_esp8266_PRE_BUILD_TARGETS:= 
esp8266_PRE_BUILD_TARGETS:= 
osal_PRE_BUILD_TARGETS:= 
kernel_init_PRE_BUILD_TARGETS:= 
auto_component_PRE_BUILD_TARGETS:= 
yloop_PRE_BUILD_TARGETS:= 
cli_PRE_BUILD_TARGETS:= 
common_PRE_BUILD_TARGETS:= 
kv_PRE_BUILD_TARGETS:= 
newlib_stub_PRE_BUILD_TARGETS:= 
lwip_PRE_BUILD_TARGETS:= 
alicrypto_PRE_BUILD_TARGETS:= 
hal_PRE_BUILD_TARGETS:= 
recovery_PRE_BUILD_TARGETS:= 
digest_algorithm_PRE_BUILD_TARGETS:= 
rhino_PRE_BUILD_TARGETS:= 
xtensa_PRE_BUILD_TARGETS:= 
cloud_PRE_BUILD_TARGETS:= 
espos_PRE_BUILD_TARGETS:= 
log_PRE_BUILD_TARGETS:= 
vfs_PRE_BUILD_TARGETS:= 
nbpatch_PRE_BUILD_TARGETS:= 
xz-embedded_PRE_BUILD_TARGETS:= 
vfs_device_PRE_BUILD_TARGETS:= 
GPIO_LED_PREBUILT_LIBRARY := 
board_esp8266_PREBUILT_LIBRARY := 
esp8266_PREBUILT_LIBRARY := ././platform/mcu/esp8266/bsp/lib/libhal.a ././platform/mcu/esp8266/bsp/lib/libcrypto.a ././platform/mcu/esp8266/bsp/lib/libmain.a ././platform/mcu/esp8266/bsp/lib/libcirom.a ././platform/mcu/esp8266/bsp/lib/libnet80211.a ././platform/mcu/esp8266/bsp/lib/libpp.a ././platform/mcu/esp8266/bsp/lib/libwpa.a ././platform/mcu/esp8266/bsp/lib/libphy.a ././platform/mcu/esp8266/bsp/lib/libgcc.a ././platform/mcu/esp8266/bsp/lib/liblwip.a
osal_PREBUILT_LIBRARY := 
kernel_init_PREBUILT_LIBRARY := 
auto_component_PREBUILT_LIBRARY := 
yloop_PREBUILT_LIBRARY := 
cli_PREBUILT_LIBRARY := 
common_PREBUILT_LIBRARY := 
kv_PREBUILT_LIBRARY := 
newlib_stub_PREBUILT_LIBRARY := 
lwip_PREBUILT_LIBRARY := 
alicrypto_PREBUILT_LIBRARY := 
hal_PREBUILT_LIBRARY := 
recovery_PREBUILT_LIBRARY := 
digest_algorithm_PREBUILT_LIBRARY := 
rhino_PREBUILT_LIBRARY := 
xtensa_PREBUILT_LIBRARY := 
cloud_PREBUILT_LIBRARY := 
espos_PREBUILT_LIBRARY := 
log_PREBUILT_LIBRARY := 
vfs_PREBUILT_LIBRARY := 
nbpatch_PREBUILT_LIBRARY := 
xz-embedded_PREBUILT_LIBRARY := 
vfs_device_PREBUILT_LIBRARY := 
GPIO_LED_TYPE             := 
board_esp8266_TYPE             := 
esp8266_TYPE             := kernel 
osal_TYPE             := 
kernel_init_TYPE             := kernel
auto_component_TYPE             := kernel
yloop_TYPE             := kernel
cli_TYPE             := kernel
common_TYPE             := 
kv_TYPE             := 
newlib_stub_TYPE             := share
lwip_TYPE             := kernel
alicrypto_TYPE             := 
hal_TYPE             := kernel
recovery_TYPE             := uota
digest_algorithm_TYPE             := 
rhino_TYPE             := kernel
xtensa_TYPE             := 
cloud_TYPE             := kernel
espos_TYPE             := 
log_TYPE             := 
vfs_TYPE             := kernel
nbpatch_TYPE             := uota
xz-embedded_TYPE             := framwork
vfs_device_TYPE             := 
GPIO_LED_SELF_BUIlD_COMP_targets  := 
board_esp8266_SELF_BUIlD_COMP_targets  := 
esp8266_SELF_BUIlD_COMP_targets  := 
osal_SELF_BUIlD_COMP_targets  := 
kernel_init_SELF_BUIlD_COMP_targets  := 
auto_component_SELF_BUIlD_COMP_targets  := 
yloop_SELF_BUIlD_COMP_targets  := 
cli_SELF_BUIlD_COMP_targets  := 
common_SELF_BUIlD_COMP_targets  := 
kv_SELF_BUIlD_COMP_targets  := 
newlib_stub_SELF_BUIlD_COMP_targets  := 
lwip_SELF_BUIlD_COMP_targets  := 
alicrypto_SELF_BUIlD_COMP_targets  := 
hal_SELF_BUIlD_COMP_targets  := 
recovery_SELF_BUIlD_COMP_targets  := 
digest_algorithm_SELF_BUIlD_COMP_targets  := 
rhino_SELF_BUIlD_COMP_targets  := 
xtensa_SELF_BUIlD_COMP_targets  := 
cloud_SELF_BUIlD_COMP_targets  := 
espos_SELF_BUIlD_COMP_targets  := 
log_SELF_BUIlD_COMP_targets  := 
vfs_SELF_BUIlD_COMP_targets  := 
nbpatch_SELF_BUIlD_COMP_targets  := 
xz-embedded_SELF_BUIlD_COMP_targets  := 
vfs_device_SELF_BUIlD_COMP_targets  := 
GPIO_LED_SELF_BUIlD_COMP_scripts  := 
board_esp8266_SELF_BUIlD_COMP_scripts  := 
esp8266_SELF_BUIlD_COMP_scripts  := 
osal_SELF_BUIlD_COMP_scripts  := 
kernel_init_SELF_BUIlD_COMP_scripts  := 
auto_component_SELF_BUIlD_COMP_scripts  := 
yloop_SELF_BUIlD_COMP_scripts  := 
cli_SELF_BUIlD_COMP_scripts  := 
common_SELF_BUIlD_COMP_scripts  := 
kv_SELF_BUIlD_COMP_scripts  := 
newlib_stub_SELF_BUIlD_COMP_scripts  := 
lwip_SELF_BUIlD_COMP_scripts  := 
alicrypto_SELF_BUIlD_COMP_scripts  := 
hal_SELF_BUIlD_COMP_scripts  := 
recovery_SELF_BUIlD_COMP_scripts  := 
digest_algorithm_SELF_BUIlD_COMP_scripts  := 
rhino_SELF_BUIlD_COMP_scripts  := 
xtensa_SELF_BUIlD_COMP_scripts  := 
cloud_SELF_BUIlD_COMP_scripts  := 
espos_SELF_BUIlD_COMP_scripts  := 
log_SELF_BUIlD_COMP_scripts  := 
vfs_SELF_BUIlD_COMP_scripts  := 
nbpatch_SELF_BUIlD_COMP_scripts  := 
xz-embedded_SELF_BUIlD_COMP_scripts  := 
vfs_device_SELF_BUIlD_COMP_scripts  := 
AOS_SDK_UNIT_TEST_SOURCES   		:=                                                  
ALL_RESOURCES             		:= 
INTERNAL_MEMORY_RESOURCES 		:= 
EXTRA_TARGET_MAKEFILES 			:=    .//platform/mcu/esp8266/gen_crc_bin.mk
APPS_START_SECTOR 				:=  
BOOTLOADER_FIRMWARE				:=  
ATE_FIRMWARE				        :=  
APPLICATION_FIRMWARE				:=  
PARAMETER_1_IMAGE					:=  
PARAMETER_2_IMAGE					:=  
FILESYSTEM_IMAGE					:=  
WIFI_FIRMWARE						:=  
BT_PATCH_FIRMWARE					:=  
AOS_ROM_SYMBOL_LIST_FILE 		:= 
AOS_SDK_CHIP_SPECIFIC_SCRIPT		:=                         
AOS_SDK_CONVERTER_OUTPUT_FILE	:=                         
AOS_SDK_FINAL_OUTPUT_FILE 		:=                         
AOS_RAM_STUB_LIST_FILE 			:= 
PING_PONG_OTA 					:= 
