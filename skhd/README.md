# SKHD Configuration for Yabai

This repository contains the SKHD (Simple Hotkey Daemon) configuration for use with the Yabai window manager on macOS.

## Table of Contents

- [Installation](#installation)
- [Keyboard Shortcuts](#keyboard-shortcuts)
    - [Stack Navigation](#stack-navigation)
    - [Window Navigation](#window-navigation)
    - [Display Navigation](#display-navigation)
    - [Modifying Layout](#modifying-layout)
    - [Window Size Modification](#window-size-modification)
    - [Window Resizing](#window-resizing)
    - [Moving Windows](#moving-windows)
    - [Moving Windows Between Displays](#moving-windows-between-displays)
    - [Move and Split](#move-and-split)
    - [Yabai Control](#yabai-control)
    - [Miscellaneous](#miscellaneous)
- [Customization](#customization)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Installation

1. Ensure you have SKHD and Yabai installed on your system.
2. Clone this repository or download the `.skhdrc` file.
3. Place the `.skhdrc` file in your home directory (`~/.skhdrc`).
4. Restart the SKHD service to apply the new configuration:

   ```
   skhd --restart
   ```

## Keyboard Shortcuts

### Stack Navigation

| Shortcut          | Action                                              |
|-------------------|-----------------------------------------------------|
| `shift + alt - m` | Stack focused window with window under mouse cursor |
| `alt - n`         | Focus next stacked window                           |
| `alt - p`         | Focus previous stacked window                       |

### Window Navigation

| Shortcut  | Action                    |
|-----------|---------------------------|
| `alt - h` | Focus window to the left  |
| `alt - j` | Focus window below        |
| `alt - k` | Focus window above        |
| `alt - l` | Focus window to the right |

### Display Navigation

| Shortcut  | Action                     |
|-----------|----------------------------|
| `alt - s` | Focus display to the left  |
| `alt - g` | Focus display to the right |

### Modifying Layout

| Shortcut          | Action                     |
|-------------------|----------------------------|
| `shift + alt - r` | Rotate layout 270 degrees  |
| `shift + alt - y` | Mirror layout along y-axis |
| `shift + alt - x` | Mirror layout along x-axis |
| `shift + alt - t` | Toggle float and set grid  |
| `shift + alt - v` | Toggle split               |

### Window Size Modification

| Shortcut                               | Action                   |
|----------------------------------------|--------------------------|
| `alt - f`                              | Toggle zoom-fullscreen   |
| `shift + alt - f`                      | Toggle native fullscreen |
| `shift + alt - e` or `shift + alt - 0` | Balance space            |

### Window Resizing

| Shortcut             | Action              |
|----------------------|---------------------|
| `ctrl + alt - left`  | Resize window left  |
| `ctrl + alt - down`  | Resize window down  |
| `ctrl + alt - up`    | Resize window up    |
| `ctrl + alt - right` | Resize window right |

### Moving Windows

| Shortcut          | Action                    |
|-------------------|---------------------------|
| `shift + alt - h` | Swap window left          |
| `shift + alt - j` | Swap window down          |
| `shift + alt - k` | Swap window up            |
| `shift + alt - l` | Swap window right         |
| `shift + alt - 1` | Swap with first window    |
| `shift + alt - p` | Swap with previous window |
| `shift + alt - n` | Swap with next window     |

### Moving Windows Between Displays

| Shortcut          | Action                                 |
|-------------------|----------------------------------------|
| `shift + alt - s` | Move window to left display and focus  |
| `shift + alt - g` | Move window to right display and focus |

### Move and Split

| Shortcut         | Action                      |
|------------------|-----------------------------|
| `ctrl + alt - h` | Move window left and split  |
| `ctrl + alt - j` | Move window down and split  |
| `ctrl + alt - k` | Move window up and split    |
| `ctrl + alt - l` | Move window right and split |

### Yabai Control

| Shortcut         | Action        |
|------------------|---------------|
| `ctrl + alt - q` | Stop Yabai    |
| `ctrl + alt - s` | Start Yabai   |
| `ctrl + alt - r` | Restart Yabai |

### Miscellaneous

| Shortcut              | Action                         |
|-----------------------|--------------------------------|
| `shift + alt - space` | Toggle sketchybar visibility   |
| `shift + cmd - space` | Toggle window float and border |

## Customization

Feel free to modify the `.skhdrc` file to suit your personal preferences. After making changes, remember to restart the
SKHD service for them to take effect.

## Troubleshooting

If you encounter any issues:

1. Check that SKHD and Yabai are running correctly.
2. Ensure there are no conflicting system shortcuts.
3. Review the SKHD log for any error messages:

   ```
   tail -f /tmp/skhd.log
   ```

## Contributing

Contributions to improve this configuration are welcome. Please submit a pull request or open an issue to discuss
proposed changes.

## License

This configuration is released under the MIT License. See the LICENSE file for details.
