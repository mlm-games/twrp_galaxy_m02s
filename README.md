# TWRP Device tree for Galaxy M02s and A02s.

Tested on M02s (Does boot on A02s but careful flashing GSIs (refer this issue: https://github.com/mlm-games/twrp_galaxy_m02s/issues/5)

Check the releases and this [XDA thread](https://xdaforums.com/t/guide-m025f-flashing-a-gsi-with-and-without-twrp.4643733/) for instructions



base-tree -> https://github.com/ravindu644/twrp_galaxy_m02s

Kernel-source -> https://gitlab.com/mlmstudios1/m02s-kernel

The touch doesnt work on inital boot but it works after turning the screen off for 5secs and then turning the screen on (maybe twice or thrice to verify).

## Troubleshooting

If you are not able to get it to load to twrp, flash another vbmeta.img instead of the google's null vbmeta.img

You may need to factory reset or wipe data after using multidisabler and flashing magisk.zip (renaming the apk)
