# Lotus Esprit Turbo Challenge for macOS

<img width="1137" height="829" alt="image" src="https://github.com/user-attachments/assets/a84303a8-1883-421d-9dd2-fe50833f127b" />
<img width="1137" height="829" alt="image" src="https://github.com/user-attachments/assets/d843f4a3-56da-4504-a22d-3206c74ba059" />
<img width="1137" height="829" alt="image" src="https://github.com/user-attachments/assets/cb73465b-a639-4e51-adc2-ba77bfbbf3ab" />

A native macOS port of the Amiga racing game **Lotus Esprit Turbo Challenge**,
with the original gameplay, optional HD graphics and music, and online
multiplayer.

Race alone, share a Mac in local two-player split-screen, or challenge another
player online. Switch between the original presentation and the HD mode to
choose the look and sound you prefer.

**You must own the original Amiga game and provide a compatible ADF disk image
to play. The original disk image and extracted game files are not included in
the release app.**

## Features

- **Original gameplay:** the original races, difficulty levels, manual or
  automatic gears, fuel management, pit stops, and split-screen racing.
- **Classic graphics:** the original Amiga presentation with sharp pixel scaling
  and the original aspect ratio.
- **Optional HD graphics:** redrawn cars, scenery, garage and menu artwork;
  smooth road markings and curbs; detailed road and roadside surfaces; soft sky
  gradients; and higher-resolution HUD and result screens.
- **Original and HD music:** switch between the original Amiga music and five HD
  tracks, with separate music playback controls and preserved driving sounds.
- **Keyboard and controller support:** separate player profiles, remappable
  inputs, adjustable stick dead zones, and rumble on supported controllers.
- **Local and online two-player racing:** both players share the original
  split-screen layout.
- **Online lobby:** browse open and private rooms, create a race, or join a
  friend using a room code.
- **Online Wall of Fame and race chat:** persistent server-side rankings and
  short messages displayed during the race.
- **Native Mac interface:** resizable windows, fullscreen support, and German
  and English interface localization.

## Requirements

- **macOS 11 Big Sur or later.**
- An **Intel Mac or Apple Silicon Mac**. The release app supports both.
- Ownership of the original **Lotus Esprit Turbo Challenge for Amiga** and a
  compatible, uncompressed **`.adf` disk image**.
- An internet connection for online multiplayer and the Online Wall of Fame.

No Amiga emulator, Kickstart ROM, Python installation, or additional extraction
utility is required to run the release. The ADF importer is included in the app.

## Getting started

1. Download the macOS release from this repository's **Releases** section.
2. Extract the downloaded archive and move the app to **Applications**.
3. Launch the game.
4. Confirm that you own the original Amiga game and select your `.adf` file when
   prompted.
5. Wait for the import and local resource preparation to finish, then play.

The importer verifies the game files and checks that the program is compatible
with this port. Identification is based on the contents of the game files,
rather than the ADF filename or a single hash of the entire disk image.

Imported game data and resources derived from it are stored in:

```text
~/Library/Application Support/Lotus1/
```

Your ADF remains unchanged and is not needed for normal play after a successful
import. HD artwork, fonts, backgrounds, and HD music remain in the app bundle.

To select a different disk image later, use **File → Import another ADF…**.

### ADF compatibility

Several DOS/AmigaDOS editions are supported, including the verified Genesis–Angels
PowerPacker and AGA NOMAD variants. Not every ADF edition is compatible.

The Angels custom-trackloader editions labelled `b doscopy` and `f Full-Evil`
are currently unsupported. They do not contain a normal Amiga filesystem and
use a different program layout. The importer displays a specific message for
these editions.

## Graphics, audio, and display options

Use the toolbar at the bottom of the game window:

| Option | What it does |
| --- | --- |
| **HD Graphics** | Switch between the original graphics and the HD presentation. |
| **HD Audio** | Switch between original Amiga music and the HD soundtrack. |
| **Previous / Play–Pause / Next** | Control the music without stopping the race. |
| **50 Hz / 60 Hz** | Choose the display refresh mode. The original simulation remains at 50 Hz. |
| **Pause / Resume** | Pause or continue the game. |
| **Mute / Unmute** | Toggle game audio. |
| **Fullscreen / Window** | Change the window mode. |
| **Controls** | Configure keyboard and controller profiles. |
| **Online** | Open the online lobby. |

Graphics and audio preferences are saved between sessions. HD graphics and HD
music can be enabled independently. Switching between original and HD music
crossfades between the two versions without restarting the current track.

Music controls are available during a race and, online, on the radio screen as
well. Pausing the music leaves the race and driving sounds running.

## Controls

All driving inputs can be changed separately for each player in **Controls**.
The default keyboard bindings are:

| Action | Player 1 | Player 2 |
| --- | --- | --- |
| Steer left / right | ← / → or A / D | Keypad 4 / 6 or J / L |
| Accelerate / menu up | ↑ or W | Keypad 8 or I |
| Brake / menu down | ↓ or S | Keypad 2 or K |
| Fire / confirm | Space or Return | Keypad 0 or U |
| Pause / resume | P | F9 |
| Return to the game menu | Esc | F8 |
| Open the player's control settings | F1 | F2 |

For manual gears, hold **Fire** and press **Up** or **Down** to shift.
Use **Control + Command + F** to toggle fullscreen.

Controllers can be assigned independently to both players. Button and stick
mappings, dead zones, and supported rumble settings are saved per player.

In the HD options menu, each player's **Control** entry opens their input
settings. The legacy control-type and joystick-port entries in Classic mode
remain visible for the original appearance; input configuration is handled by
the Mac **Controls** settings.

### Refuelling

Look for a pit section marked with a yellow spanner. Move into the pit lane on
the right and brake to a stop to refuel. Accelerate again to leave the pits.
If the tank runs empty, the car will coast to a stop.

## Online multiplayer

The release connects to **`lotus1.wired.us.kg:19890`**.

1. Open **Online** in the toolbar.
2. Enter a nickname of **2–20 characters**, then select **Connect**.
3. Join an open room, create your own room, or enter a private room's code.

The lobby shows room names, open/private status, player counts, difficulty,
gear settings, and whether a race has started. Private rooms remain visible in
the list, but joining requires their six-character code.

The room creator chooses the difficulty and gear setting. The creator drives
**Player 1 on the top screen**; the joining player drives **Player 2 on the
bottom screen**. **Both Macs use their local Player 1 keyboard or controller
profile**, regardless of which car they control online.

Both players see the same split-screen race. Each player can independently
choose their graphics mode, original or HD audio, and music selection.

The online window can be resized by dragging its edges or corners. The room
list and Wall of Fame adjust to the available space.

### Online Wall of Fame

The Wall of Fame appears beside the lobby and shows separate rankings for
**Easy**, **Medium**, and **Hard**. Highscores are stored persistently on the
server. While connected, the game checks the local highscore file and refreshes
the rankings every **15 seconds**.

### Race chat

Press **Control + C** during an online race to type a message. Press **Return**
to send it or **Esc** to cancel.

Messages appear at the top left, below the progress bar, and disappear after
**10 seconds**. The race continues while typing; driving inputs are temporarily
released while the chat field has focus.

### Shared pause and connection behaviour

Pausing the game or opening control settings pauses the shared online race.
The player who paused it must resume it. Moving a game window into the
background releases that player's inputs and keeps the race running.

Both players need compatible app versions and matching imported game data.
Online play keeps the two simulations synchronized, so a very slow computer or
an unstable connection can still slow the shared race.

## Credits and notices

The original **Lotus Esprit Turbo Challenge** was developed by **Magnetic Fields**
and published by **Gremlin Graphics**.

This is an **unofficial port**, with no affiliation with or endorsement by the
original developers, publishers, or Lotus. Original game content and trademarks
belong to their respective rights holders. Using this port does not grant any
rights to the original game.

The app uses **libopenmpt** for original music playback, **unar / lsar** for ADF
extraction, and **Potrace** for preparing local vector resources. Third-party
license notices and the corresponding source packages where required are
included with the app.
