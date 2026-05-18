#!/bin/bash
DIRECTION=$1
CURRENT=$(hyprctl activeworkspace -j | python3 -c "import sys,json; print(json.load(sys.stdin)['id'])")

case "$DIRECTION" in
  right)
    case "$CURRENT" in
      5) hyprctl dispatch movetoworkspacesilent 7 ;;
      1) hyprctl dispatch movetoworkspacesilent 5 ;;
    esac
    ;;
  left)
    case "$CURRENT" in
      5) hyprctl dispatch movetoworkspacesilent 1 ;;
      7) hyprctl dispatch movetoworkspacesilent 5 ;;
    esac
    ;;
  down)
    case "$CURRENT" in
      5) hyprctl dispatch movetoworkspacesilent 3 ;;
      8) hyprctl dispatch movetoworkspacesilent 5 ;;
    esac
    ;;
  up)
    case "$CURRENT" in
      5) hyprctl dispatch movetoworkspacesilent 8 ;;
      3) hyprctl dispatch movetoworkspacesilent 5 ;;
    esac
    ;;
esac
