# Local animation vectorizer

`lotus-trace` is a standalone executable, separately invoked by the local
resource preparation worker. The game does not link libpotrace. The helper
uses Potrace 1.16, copyright Peter Selinger, under GPL-2.0-or-later; see COPYING.

The complete corresponding upstream source (`potrace-1.16.tar.gz`), the adapter
source (`lotus-trace.c`) and `build_trace_helper.py` are included alongside this
notice in `Contents/Resources/Potrace`. There are no game assets in these sources.
The exact upstream archive and binary hashes are recorded in `manifest.json`.

The helper is built for x86_64 and arm64 with minimum macOS 11. It links only
system libSystem. Rebuild in the project with:

```
python3 Tools/build_trace_helper.py
```

It accepts bounded binary bitmap masks and emits JSON polygons. The algorithm
and parameters match the former authoring step (turdsize 2, alphamax 0, no curve
optimization). Masks, palettes, frame hashes and animation polygons are obtained
from the player's imported ADF and saved only in Application Support.
