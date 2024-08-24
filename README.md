# TWRP Device tree for Galaxy M02s and A02s.

Tested on M02s (Does boot on A02s but careful flashing GSIs according to this issue: https://github.com/mlm-games/twrp_galaxy_m02s/issues/5 , Edit: actually the issue might caused by gapps being flashed later according to this [post](https://xdaforums.com/t/guide-how-to-install-aosp-gsi-on-samsung-devices-not-for-beginners.4533215/) and [this](https://wiki.lineageos.org/devices/zippo/install/#installing-add-ons) one too)
So if anyone else has also tried and has prior knowledge related to flashing, pls open an issue, i'll just remove the text after some clarity (and once pls read the issue referred to above before trying)

Check the releases and this [XDA thread](https://xdaforums.com/t/official-twrp-for-samsung-galaxy-m02s-recovery.4687597/) for instructions

Thanks to everyone who helped and whose repositories I've used

base-tree -> https://github.com/ravindu644/twrp_galaxy_m02s

Kernel-source -> https://gitlab.com/mlmstudios1/m02s-kernel

The touch doesnt work on inital boot but it works after turning the screen off for 5secs and then turning the screen on (maybe twice or thrice to verify).

## Troubleshooting

If you are not able to get it to load to twrp, flash another vbmeta.img instead of the google's null vbmeta.img

You may need to factory reset or wipe data after using multidisabler and flashing magisk.zip (renaming the apk).
Do not reboot after flashing magisk and factory resetting before checking for the "bootloader is already unlocked" text in developer options.
