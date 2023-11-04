# Magisk Manager for Recovery Mode (mm)
<p align="left">
    <a href="https://github.com/Rikj000/Magisk-Manager-for-Recovery-Mode/releases">
        <img src="https://img.shields.io/github/downloads/Rikj000/Magisk-Manager-for-Recovery-Mode/total?label=Total%20Downloads&logo=github" alt="Total Releases Downloaded from GitHub">
    </a> <a href="https://github.com/Rikj000/Magisk-Manager-for-Recovery-Mode/releases/latest">
        <img src="https://img.shields.io/github/v/release/Rikj000/Magisk-Manager-for-Recovery-Mode?include_prereleases&label=Latest%20Release&logo=github" alt="Latest Official Release on GitHub">
    </a> <a href="https://github.com/Rikj000/Magisk-Manager-for-Recovery-Mode/blob/master/License.md">
        <img src="https://img.shields.io/github/license/Rikj000/Magisk-Manager-for-Recovery-Mode?label=License&logo=gnu" alt="GNU General Public License">
    </a> <a href="https://github.com/Rikj000/Magisk-Manager-for-Recovery-Mode#magisk-manager-for-recovery-mode-mm">
        <img src="https://img.shields.io/badge/Docs-mm-blue?logo=libreoffice&logoColor=white" alt="The current place where you can find all Magisk Manager for Recovery Mode (mm) Documentation!">
    </a><a href="https://www.iconomi.com/register?ref=zQQPK">
        <img src="https://img.shields.io/badge/Join-ICONOMI-blue?logo=bitcoin&logoColor=white" alt="ICONOMI - The world’s largest crypto strategy provider">
    </a> <a href="https://www.buymeacoffee.com/Rikj000">
        <img src="https://img.shields.io/badge/-Buy%20me%20a%20Coffee!-FFDD00?logo=buy-me-a-coffee&logoColor=black" alt="Buy me a Coffee as a way to sponsor this project!">
    </a>
</p>

Easily manage your **Magisk Modules** from a terminal session in your custom recovery! *(e.g. [TWRP](https://twrp.me/))*


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
- **Magisk** v19.0 - v26.X


## Setup

#### Install + Updates
1. Download & store the latest [`MagiskManagerForRecovery_vX_XXXXXXXXX.zip`](https://github.com/Rikj000/Magisk-Manager-for-Recovery-Mode/releases/latest) release file   
somewhere on your phone's **internal storage** *(Not on the SD or external storage!)*
2. Install the `MagiskManagerForRecovery_vX_XXXXXXXXX.zip` release file
    - **From System:** Use [Magisk](https://github.com/topjohnwu/Magisk)'s Manager app or the [Androidacy/MagiskModuleManager](https://github.com/Androidacy/MagiskModuleManager) to install the `.zip` file from local storage
    - **From Custom Recovery:** Use to install the `.zip` file from local storage

#### Uninstall
- **From System:** Use [Magisk](https://github.com/topjohnwu/Magisk)'s Manager app or the [Androidacy/MagiskModuleManager](https://github.com/Androidacy/MagiskModuleManager) to uninstall
- **From Custom Recovery:** Use the `*/mm` or `sh /sdcard/mm` command in a terminal session *(supports `uninstall.sh`)*


## Usage
1. Boot into your custom recovery *(e.g. [TWRP](https://twrp.me/))*
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
**v8 - 2023.11.4 (202311040)**
- Updated Magisk version support to **Magisk v19.0 - v26.X**
- Updated documentation

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
