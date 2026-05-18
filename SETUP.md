1. Scripts
Place both scripts in ~/.config/hypr/scripts/ and make them executable:
chmod +x ~/.config/hypr/scripts/nav.sh
chmod +x ~/.config/hypr/scripts/movewin.sh

2. Hyprland config, add to your hyprland.conf:
# Modus - workspace navigation
bind = $mainMod, W, exec, ~/.config/hypr/scripts/nav.sh down
bind = $mainMod, S, exec, ~/.config/hypr/scripts/nav.sh up
bind = $mainMod, A, exec, ~/.config/hypr/scripts/nav.sh right
bind = $mainMod, D, exec, ~/.config/hypr/scripts/nav.sh left

# Modus - move active window to another workspace
bind = $mainMod SHIFT, W, exec, ~/.config/hypr/scripts/movewin.sh down
bind = $mainMod SHIFT, S, exec, ~/.config/hypr/scripts/movewin.sh up
bind = $mainMod SHIFT, A, exec, ~/.config/hypr/scripts/movewin.sh left
bind = $mainMod SHIFT, D, exec, ~/.config/hypr/scripts/movewin.sh right

# Recover to home workspace (when you disconnect your external monitor use this to reset)
bind = $mainMod, 5, workspace, 5

# Start at home workspace on boot
exec-once = hyprctl dispatch workspace 5

3. Touchpad gestures
gesture = 4, left,  dispatcher, exec, ~/.config/hypr/scripts/nav.sh left
gesture = 4, right, dispatcher, exec, ~/.config/hypr/scripts/nav.sh right
gesture = 4, up,    dispatcher, exec, ~/.config/hypr/scripts/nav.sh up
gesture = 4, down,  dispatcher, exec, ~/.config/hypr/scripts/nav.sh down

4. Monitor setup (optional, the samsung is my external monitor, just a example!)
monitor = eDP-1, highres, 3440x0, 1
monitor = desc:Samsung Electric Company C34H89x H4ZRC01794, 3440x1440@99.98Hz, 0x0, 1 

workspace = 1, monitor:DP-4
workspace = 3, monitor:DP-4
workspace = 5, monitor:DP-4, default:true
workspace = 7, monitor:DP-4
workspace = 8, monitor:DP-4
workspace = 6, monitor:eDP-1, default:true

5. QML indicator (optional)
See the file called "Workspace_indicator.qml", you can implement this however you like!