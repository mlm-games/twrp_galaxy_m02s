# TWRP Device tree for Galaxy M02s and A02s.

Tested on M02s (Does boot on A02s but careful flashing GSIs according to this issue: https://github.com/mlm-games/twrp_galaxy_m02s/issues/5 , Edit: actually the issue might have been caused by gapps being flashed later according to this [post](https://xdaforums.com/t/guide-how-to-install-aosp-gsi-on-samsung-devices-not-for-beginners.4533215/) and [this](https://wiki.lineageos.org/devices/zippo/install/#installing-add-ons) one too)
So if anyone else has also tried and has prior knowledge related to flashing, pls open an issue, i'll just remove the text after recieving some clarity abt. the issue (and once pls read the issue referred to above before trying)

Check the releases and this [XDA thread](https://xdaforums.com/t/official-twrp-for-samsung-galaxy-m02s-recovery.4687597/) for instructions

Thanks to everyone who helped and whose repositories I've used

base-tree -> https://github.com/ravindu644/twrp_galaxy_m02s

Kernel-source -> https://gitlab.com/mlmstudios1/m02s-kernel

The touch doesnt work on inital boot but it works after turning the screen off for 5secs and then turning the screen on (maybe twice or thrice to verify).

## Troubleshooting

If you are not able to get it to load to twrp, flash any disabled vbmeta.img for the device instead of the google's null vbmeta.img

Stock files (recovery.img.lz4, dtbo.img, boot.img): https://github.com/mlm-games/twrp_galaxy_m02s/releases/tag/v3.7.1-0.2

# Generic stuff

## TWRP Recovery for Samsung Galaxy M02s (SM-M025F)

![TWRP Logo](https://github.com/TeamWin/Team-Win-Recovery-Project.github.io/raw/master/images/logo.png)


---

## Device Information

| Device Info       | Specification                                            |
|-------------------|----------------------------------------------------------|
| **Device Name**   | Samsung Galaxy M02s                                      |
| **Model Number**  | SM-M025F, SM-M025M, SM-M025G                             |
| **Codename**      | `m02s`                                                   |
| **SoC (Chipset)** | Qualcomm Snapdragon 450 (SDM450)                         |
| **CPU**           | Octa-core 1.8 GHz Cortex-A53                             |
| **GPU**           | Adreno 506                                               |
| **RAM**           | 3 GB / 4 GB                                              |
| **Storage**       | 32 GB / 64 GB internal storage                           |
| **MicroSD**       | microSDXC support (dedicated slot)                       |
| **Battery**       | Non-removable Li-Po 5000 mAh battery                     |
| **Display**       | 6.5 inches PLS IPS LCD, 720 x 1600 pixels (~270 ppi)     |
| **Rear Camera**   | Triple: 13 MP (wide), 2 MP (macro), 2 MP (depth)         |
| **Front Camera**  | 5 MP                                                     |
| **Android OS**    | Android 10 with One UI Core 2.5                          |
| **Release Date**  | January 2021                                             |

---

## Features

- Full touch support
- Backup and restore capabilities
- Flashing of zip and image files
- ADB access in recovery mode
- MTP support for file transfers
- Advanced features such as Terminal, File Manager, and more

---

## What's Working

- ✅ Booting into recovery
- ✅ Touchscreen functionality
- ✅ Mounting of all partitions
- ✅ ADB and MTP access
- ✅ Flashing of zip and image files
- ✅ Backup and restore functions
- ✅ Decryption of data partition (if applicable)
- ✅ Battery level display

---

## Known Issues

- ❌ **Decryption Issues:** May have problems decrypting data if encryption is enforced by the stock firmware
- ❌ **SELinux:** Needs to be set to permissive for certain operations
- ❌ **Additional Issues:** Please report any bugs or issues encountered

---

## Disclaimer

> **Warning:** Installing custom recovery and modifying your device can void your warranty and may result in device malfunctions if not done properly. **Proceed at your own risk.** Neither the developers nor anyone else is responsible for any damage that may occur to your device by using this software.

---

## Installation Instructions

### Prerequisites

- **Unlocked Bootloader:** [Instructions here](#unlocking-the-bootloader)
- **Odin Flash Tool:** [Download Odin v3.14.1](https://odinflashtool.com/download/)
- **Samsung USB Drivers:** [Download](https://developer.samsung.com/mobile/android-usb-driver.html)
- **USB Cable:** Original or compatible USB cable for data transfer
- **TWRP Image File:** Download the recovery image from the [Downloads](#downloads) section
- **Disable DM-Verity and Force Encryption Zip:**

### Steps

#### 1. Enable Developer Options and USB Debugging

- Go to **Settings > About phone > Software information**
- Tap on **Build number** seven times until it says "Developer mode has been turned on"
- Go back to **Settings > Developer options**
- Enable **OEM unlocking** and **USB debugging**

#### 2. Unlocking the Bootloader

> **Note:** Unlocking the bootloader will erase all data on your device.

- Turn off your device.
- Boot into **Download Mode**:
  - Press and hold **Volume Up** and **Volume Down** buttons simultaneously.
  - While holding them, connect your device to the PC using a USB cable.
  - Release the buttons when you see the **Warning** screen.
- On the **Warning** screen, press and hold the **Volume Up** button to enter the device unlock mode.
- Read the warning carefully, then press the **Volume Up** button to confirm and unlock the bootloader.

#### 3. Flashing TWRP Recovery with Odin

- **Note:** After unlocking, the device will reset. Set it up and re-enable **USB debugging** and **OEM unlocking**.
- Download and install **Samsung USB Drivers** on your PC.
- Download **Odin** and extract the ZIP file.
- Place the downloaded `twrp.img.tar` file in a convenient location.
- Boot your device into **Download Mode** again.
- Launch **Odin** on your PC.
- In Odin, click on the **Options** tab and uncheck **Auto Reboot**.
- Click on the **AP** button and select the `twrp.img.tar` file.
- Click **Start** to begin flashing.
- Once the process completes and you see a **PASS** message, disconnect your device.

#### 4. Boot into TWRP Recovery

- **Important:** Do not boot into the system yet.
- Immediately boot into recovery:
  - Press and hold **Volume Up** and **Power** buttons simultaneously.
  - Release the **Power** button when the Samsung logo appears but keep holding **Volume Up** until TWRP loads.

#### 5. Disable DM-Verity (Force Encryption also recommended)

- For Force Encyption -> In TWRP, swipe to allow modifications if prompted.
- Go to Advanced -> Terminal -> type multidisabler and click the tick mark on the keyboard (you know what i mean)
- Go to **Wipe > Format Data**, type **`yes`** to confirm.
- Reboot into recovery again to ensure everything is working.

#### 6. Boot into System

- Reboot your device into the system:
  - Go to **Reboot > System** in TWRP.

---

## References

- **Disable DM-Verity:** [Reference Link](https://xdaforums.com/t/howto-flash-a-blank-vbmeta.4136509/)

---

## Build Instructions

To build TWRP for the Samsung Galaxy M02s (`m02s`), follow the steps below.

### Prerequisites

- **Operating System:** Linux (Ubuntu 18.04/20.04 recommended)
- **Required Tools:** Git, Repo tool, Java Development Kit (OpenJDK 8), ADB and Fastboot
- **Disk Space:** At least 100 GB free
- **RAM:** Minimum 8 GB recommended
- **Internet Connection:** Stable and fast for downloading source code

### Steps

#### 1. Install Required Packages

```bash
sudo apt-get update
sudo apt-get install git-core repo gnupg flex bison gperf build-essential zip curl zlib1g-dev \
gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev \
lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip python
```

#### 2. Set Up Repo Tool

```bash
mkdir -p ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
export PATH=~/bin:$PATH
```

Add the above `export PATH` line to your `~/.bashrc` or `~/.profile` to make it persistent.

#### 3. Initialize the Repo

```bash
mkdir twrp-m02s
cd twrp-m02s
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-12.1
```

#### 4. Sync the Source Code

```bash
repo sync -j$(nproc --all)
```

#### 5. Clone the Device Tree, Kernel, and Vendor Trees

```bash
git clone https://github.com/mlm-games (or) TeamWin/android_device_samsung_m02s.git -b twrp device/samsung/m02s
```

#### 6. Set Up the Build Environment

```bash
source build/envsetup.sh
```

#### 7. Select the Device to Build

```bash
lunch omni_m02s-eng
```

#### 8. Start the Build

```bash
mka recoveryimage
```

#### 9. Retrieve the Built Recovery Image

- After the build completes successfully, find the recovery image at:

  ```
  out/target/product/m02s/recovery.img
  ```

- If needed, create a `.tar` file for Odin:

  ```bash
  cd out/target/product/m02s/
  tar -H ustar -c recovery.img > recovery.tar
  ```

---

## Credits

- **Team Win Recovery Project** for their exceptional recovery project
- **Samsung Open Source Release Center** for kernel sources
- **Community Contributors** who provided support and resources
- 
---

## Additional Resources

- **XDA Thread:** Look above
- **Official TWRP Site:** [TeamWin - TWRP](https://twrp.me/)
- **Samsung Firmware Download:** [SamMobile](https://www.sammobile.com/)

---

### Notes

- **Backup:** Always make a full backup of your current system before flashing any custom ROMs or mods.

---

**Disclaimer:** Installing custom recovery and modifying your device involves risks. **Proceed at your own risk.** Neither the developers nor anyone else is responsible for any damage that may occur to your device by using this software.

---

You may need to factory reset or wipe data after using multidisabler and flashing magisk.zip (renaming the apk).
Do not reboot after flashing magisk and factory resetting before checking for the "bootloader is already unlocked" text in developer options.

Look at this [link](https://github.com/linux-msm/qdl) and this [link](https://github.com/jeck24India/ROM2box-Android-Flashing-and-Repairing-tool) for qdl (for flashing in edl mode source code and what it needs from the device) to compile for fixing a device stuck in EDL mode. [Example](https://xdaforums.com/t/recovery-kernel-8-1-install-twrp-remove-encryption-get-magisk-on-visible-r2.3953494/)
