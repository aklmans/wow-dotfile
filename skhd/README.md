# SKHD Configuration Keybindings

This document outlines the keybindings configured in the `skhd` configuration file for managing windows using `yabai` and opening applications.

## Application Shortcuts

| Key Combination | Action             |
| --------------- | ------------------ |
| `cmd - 5`       | Open VSCode        |
| `cmd - 6`       | Open Warp          |
| `cmd - 7`       | Open Typora        |
| `cmd - 8`       | Open Firefox       |
| `cmd - 9`       | Open WezTerm       |
| `cmd - 0`       | Open Google Chrome |

## Stack Navigation

| Key Combination | Action                        |
| --------------- | ----------------------------- |
| `alt - n`       | Focus next stacked window     |
| `alt - p`       | Focus previous stacked window |

## Navigation

| Key Combination | Action                       |
| --------------- | ---------------------------- |
| `alt - j`       | Change focus to window south |
| `alt - k`       | Change focus to window north |
| `alt - h`       | Change focus to window west  |
| `alt - l`       | Change focus to window east  |
| `alt - s`       | Change focus to display west |
| `alt - g`       | Change focus to display east |

## Modifying the Layout

| Key Combination          | Action                                                      |
| ------------------------ | ----------------------------------------------------------- |
| `shift + alt - r`        | Rotate layout clockwise                                     |
| `shift + alt - y`        | Flip layout along y-axis                                    |
| `shift + alt - x`        | Flip layout along x-axis                                    |
| `shift + ctrl + cmd - h` | Set insertion point for focused container to the west       |
| `shift + ctrl + cmd - j` | Set insertion point for focused container to the south      |
| `shift + ctrl + cmd - k` | Set insertion point for focused container to the north      |
| `shift + ctrl + cmd - l` | Set insertion point for focused container to the east       |
| `shift + alt - t`        | Toggle window float and set grid size                       |
| `shift + alt - v`        | Toggle split mode for the focused window                    |
| `shift + alt - m`        | Stack focused window with the window under the mouse cursor |

## Modifying Window Size

| Key Combination      | Action                                |
| -------------------- | ------------------------------------- |
| `shift + alt - z`    | Maximize a window                     |
| `alt + cmd - f`      | Toggle native fullscreen for a window |
| `shift + alt - e`    | Balance out tree of windows           |
| `ctrl + cmd - left`  | Resize window left                    |
| `ctrl + cmd - down`  | Resize window down                    |
| `ctrl + cmd - up`    | Resize window up                      |
| `ctrl + cmd - right` | Resize window right                   |

## Moving Windows Aroun

| Key Combination   | Action                                                     |
| ----------------- | ---------------------------------------------------------- |
| `shift + alt - j` | Swap with window south                                     |
| `shift + alt - k` | Swap with window north                                     |
| `shift + alt - h` | Swap with window west                                      |
| `shift + alt - l` | Swap with window east                                      |
| `shift + alt - i` | Move window to the "main" location                         |
| `ctrl + alt - m`  | Swap focused window with the window under the mouse cursor |
| `ctrl + alt - o`  | Swap focused window with the previous window               |
| `ctrl + alt - p`  | Swap focused window with the most recent window            |
| `ctrl + alt - j`  | Move focused window south                                  |
| `ctrl + alt - k`  | Move focused window north                                  |
| `ctrl + alt - h`  | Move focused window west                                   |
| `ctrl + alt - l`  | Move focused window east                                   |

## Moving Windows Between Displays and Spaces

| Key Combination      | Action                                                     |
| -------------------- | ---------------------------------------------------------- |
| `shift + alt - s`    | Move focused window to display west and focus that display |
| `shift + alt - g`    | Move focused window to display east and focus that display |
| `shift + alt - p`    | Move focused window to previous space                      |
| `shift + alt - n`    | Move focused window to next space                          |
| `shift + alt - 1..7` | Move focused window to specific space (1-7)                |

## Starting/Stopping/Restarting Yabai

| Key Combination  | Action                |
| ---------------- | --------------------- |
| `ctrl + alt - q` | Stop Yabai service    |
| `ctrl + alt - s` | Start Yabai service   |
| `ctrl + alt - r` | Restart Yabai service |

## Miscellaneous

Uncomment these lines if you want to set the layout of the current space to stack or bsp:

```sh
# yabai -m space --layout stack
# yabai -m space --layout bsp
```

Uncomment this line if you want to toggle float for the focused window and toggle its border:

```sh
# shift + cmd - space : \
#    yabai -m window --toggle float; \
#    yabai -m window --toggle border
```