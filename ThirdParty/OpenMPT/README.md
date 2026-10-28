# libopenmpt 0.8.9

Upstream: https://lib.openmpt.org/libopenmpt/

Original source archive:
https://lib.openmpt.org/files/libopenmpt/src/libopenmpt-0.8.9+release.autotools.tar.gz

SHA-256: `d7ce84fd05d686c4bcf66af40eae857afa371442db60eeda3f874bd6cf6fc318`

`python3 Tools/build_openmpt.py` checks that archive, builds the unmodified
source as a Universal static library (arm64/x86_64, deployment target macOS 11),
and copies the original C API headers. External codec/audio libraries, examples,
tests and the command-line player are disabled. The application links the
decoder into its executable and only uses the MOD/A500 path. Homebrew is not
required by Xcode or by the delivered application.

The library uses the BSD 3-Clause license in `LICENSE`. The same license is
included in the application's `ThirdPartyLicenses.txt`. The source archive,
static archive and headers stay outside the application's synchronized group
and resource folder.

The C API is imported by the Swift `COpenMPT` module map. `LotusMusicData`
restores the stripped MOD headers from the original game's initialized sample
table; `LotusTracker` uses the same A500 settings as the approved listening
reference. `LotusMusicPlayer` renders by the audio device clock with a small
decoder state, independently of display callbacks, without pre-rendered songs.
