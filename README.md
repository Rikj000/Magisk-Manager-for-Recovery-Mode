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
- **Magisk** v19.0 - v27.X
- **TWRP** or another custom recovery with terminal session support

## Setup

### Initial Installation
Initial installation can be done in x2 ways
- [MRepo or MMRL](#mrepo-or-mmrl) *(Preferred)*
- [Manual download](#manual-download)

#### MRepo or MMRL
1. Download and install the [`MRepo`](https://github.com/MRepoApp/MRepo) or [`MMRL`](https://github.com/DerGoogler/MMRL) Magisk Manager app
2. Add the `Magisk-Modules-Rikj000-Repo`
    - MRepo => Settings => Repositories => Add Repo
    - MMRL => Repositories => Add Repo
   
   | Source       | Link                                                   |
   |--------------|--------------------------------------------------------|
   | **Official** | https://rikj000.github.io/Magisk-Modules-Rikj000-Repo/ |
   | **Mirror**   | https://apt.izzysoft.de/magisk/                        |
3. Install the `Magisk Manager for Recovery Mode (mm)` module
    - MRepo => Repository => Search `Magisk Manager for Recovery Mode (mm)` => Versions => Latest => Install
    - MMRL => Search `Magisk Manager for Recovery Mode (mm)` => Versions => Latest => Install

#### Manual Download
1. Download & store the latest [`MagiskManagerForRecovery_vX_XXXXXXXXX.zip`](https://github.com/Rikj000/Magisk-Manager-for-Recovery-Mode/releases/latest) release file   
   somewhere on your phone's **internal storage** *(Not on the SD or external storage!)*
2. Install the `MagiskManagerForRecovery_vX_XXXXXXXXX.zip` release file in one of following ways:
    - **From System:** Use [Magisk](https://github.com/topjohnwu/Magisk)'s Manager app or [MRepo](https://github.com/MRepoApp/MRepo) to install the `.zip` file from local storage
    - **From Custom Recovery:** Use to install the `.zip` file from local storage

### Updates
After the initial installation,   
updates can be done through [Magisk](https://github.com/topjohnwu/Magisk)'s Manager app, [MRepo](https://github.com/MRepoApp/MRepo) or [MMRL](https://github.com/DerGoogler/MMRL).

Updating through [manual download](#manual-download) is also possible, but not preferred.

### Uninstall
- **From System:** Use [Magisk](https://github.com/topjohnwu/Magisk)'s Manager app, [MRepo](https://github.com/MRepoApp/MRepo) or [MMRL](https://github.com/DerGoogler/MMRL) to uninstall
- **From Custom Recovery:** Use the `*/mm` or `sh /sdcard/mm` command in a terminal session *(supports `uninstall.sh`)*


## Usage
1. Boot into your custom recovery *(e.g. [TWRP](https://twrp.me/))*
2. Open up a terminal session from within your custom recovery
3. Run the `*/mm` or `sh /sdcard/mm` command to start managing your modules. 
4. Simply follow the instructions/wizard, everything is interactive!


## Build
```bash
BUILD_NUMBER=<enter-build-number> zip MagiskManagerForRecovery_v"$BUILD_NUMBER"_"$(date +'%Y%m%d0')" -9r * -x .*
```


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
Can be found under: 
- [CHANGELOG.md](https://github.com/Rikj000/Magisk-Manager-for-Recovery-Mode/blob/master/CHANGELOG.md) - For full change log history 
- [Releases](https://github.com/Rikj000/Magisk-Manager-for-Recovery-Mode/releases) - For release based change log
