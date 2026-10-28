# unar / lsar for the Lotus ADF importer

The application ships these independently executable helpers in
`Contents/Helpers`. They require macOS 11.0 or later and contain both `x86_64`
and `arm64` slices. They use only Apple system libraries/frameworks; Homebrew,
Python and external dylibs are not required on the player's Mac.

Upstream sources:

- https://github.com/MacPaw/XADMaster
- https://github.com/MacPaw/universal-detector
- https://theunarchiver.com/command-line

Exact commits, source archive SHA-256 values and unsigned binary hashes are in
`manifest.json`. `XADMaster.tar.gz` and `UniversalDetector.tar.gz` contain the
complete corresponding upstream sources, including their component notices.
The LGPL 2.1 license is in `LICENSE`. All these files and `build_unar.py` are
also included in `Contents/Resources/Unar` of the distributed application.

Rebuild with Xcode command-line tools:

```
python3 Tools/build_unar.py
```

From the application's `Contents/Resources/Unar` directory, run
`python3 build_unar.py`; rebuilt executables are placed in its `bin` directory.
The script removes the obsolete explicit `libstdc++.6` link reference in the
temporary lsar project and links system `libc++`. Upstream C/Objective-C/C++
source code is unchanged. Both helpers are built with deployment target 11.0;
the app build copies and signs them before signing the outer bundle.
After adding/removing packaged resources, regenerate Xcode's exact sandbox
input/output lists with `python3 Tools/update_game_resource_lists.py`.

These tools decode the user's disk image. No original game data is contained
in this directory or these upstream source archives.
