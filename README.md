# Prerequisites
* [CMake](https://cmake.org/) (added to PATH)
* [Visual Studio 6 (**Build 8168**)](https://winworldpc.com/product/microsoft-visual-stu/60)
* [MASM 6.11 + 6.13 Update](https://archive.org/details/en_masm611)
* Duke Nukem Forever (2001)

# Building
1. Copy the contents of the `October 26` directory into the `Duke4` directory.
2. Open `VSE600ENU1.ISO` and copy the `COMMON` and `VC98` directories into the `VS6` directory.
    * Do not overwrite the existing `VCVARS32.BAT` script!
3. Install MASM 6.11 and update it to MASM 6.13, then copy the contents of the `BIN` directory into `/VS6/VC98/BIN/`.
    * A pre-patched `BIN` directory is available [here](https://cdn.discordapp.com/attachments/309328208464183296/1154082976737542164/MASM613.7z).
4. Open `/Cannibal/CpjLod.cpp` and replace this block:

```cpp
#if KRN_DEBUG
#pragma comment(lib, ".\\Mrg\\Lib\\Mrgd.lib")
#else
#pragma comment(lib, ".\\Mrg\\Lib\\Mrg.lib")
#endif
```

With this:

```cpp
#if KRN_DEBUG
#pragma comment(lib, "Mrgd.lib")
#else
#pragma comment(lib, "Mrg.lib")
#endif
```

5. Run `build_vc6_release.cmd` or `build_vc6_debug.cmd`

# Visual Studio 2022
The `generate_vc17.cmd` script will generate a Visual Studio 2022 solution in `/Duke4/Build/VS2022/`. This is intended primarily for browsing and editing, an unmodified DNF 2001 source tree will not compile with modern Visual Studio tools.
