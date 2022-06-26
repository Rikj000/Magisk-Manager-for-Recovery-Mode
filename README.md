# Magisk Manager for Recovery Mode (mm)

Easily manage your **Magisk Modules** from a terminal session in your custom recovery! *(e.g. TWRP)*


## Disclaimer
- Always read/re-read this reference prior to installing/upgrading this software.
- While no cats have been harmed,   
    the authors assume no responsibility for anything that might break due to the use/misuse of it.
- To prevent fraud, do NOT mirror any link associated with this project; do NOT share builds *(`.zips`)*!   
    Share official links instead.


## Features list
- Automatically fix magisk.img (e2fsck -fy)
- List installed modules
- Toggle
  - Core only mode
  - Magic mount
  - Disable
  - Remove


## Prerequisite
- **Magisk** v19.0 - v25.X


## Setup

#### Install
1. Download & store the latest [`MagiskManagerForRecovery_vX_XXXXXXXXX.zip`](https://github.com/Rikj000/Magisk-Manager-for-Recovery-Mode/releases/latest) release file   
somewhere on your phone's **internal storage** *(Not on the SD or external storage!)*
2. Install the `MagiskManagerForRecovery_vX_XXXXXXXXX.zip` release file
    - **From System:** Use the [FoxMagiskModuleManager](https://github.com/Fox2Code/FoxMagiskModuleManager) app to install the `.zip` file from local storage
    - **From Custom Recovery:** Use to install the `.zip` file from local storage

#### Uninstall
- **From System:** Use the [FoxMagiskModuleManager](https://github.com/Fox2Code/FoxMagiskModuleManager) or [Magisk Manager](https://github.com/topjohnwu/MagiskManager) app to uninstall
- **From Custom Recovery:** Use the `*/mm` or `sh /sdcard/mm` command in a terminal session *(supports `uninstall.sh`)*


## Usage
1. Boot into your custom recovery *(e.g. TWRP)*
2. Open up a terminal session from within your custom recovery
3. Run the `*/mm` or `sh /sdcard/mm` command to start managing your modules. 
4. Simply follow the instructions/wizard, everything is interactive!


## Links
**Current - Rikj000**
- [Source Code](https://github.com/Rikj000/Magisk-Manager-for-Recovery-Mode)
- [Developer](https://github.com/Rikj000)
- [Donate](https://www.buymeacoffee.com/Rikj000)

**Original - VR-25** *(Deprecated!)*
- [Source Code](https://github.com/VR-25/mm)
- [Developer](https://github.com/VR-25)
- [Donate](https://paypal.me/vr25xda)


## Change Log
**v7 - 2022.6.26 (202206260)**
- Updated Magisk version support to **Magisk v19.0 - v25.X**
- Updated documentation

**v6 - 2021.6.6 (202106060)**
- Updated Magisk version support to **Magisk v19.0 - v23.X**
- Updated documentation

**v5 - 2020.4.17 (202004170)**
- Updated Magisk version support to **Magisk v19.0 - v20.X**
- Updated documentation

**v4 - 2019.4.4 (201904040)**
- Updated Magisk version support to **Magisk v17.0 - v19.X** (including `uninstall.sh`)
- Updated documentation
- Toggle core only mode
- Complete redesign

**v3 - 2018.8.1 (201808010)**
- Updated documentation
- General optimizations
- New & simplified installer
- Striped down (removed unnecessary code & files)

**v2 - 2018.7.24 (201807240)**
- Updated documentation
- Fixed modPath detection issue on **Magisk v16.6**
