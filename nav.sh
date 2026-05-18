#!/bin/bash
DIRECTION=$1
CURRENT=$(hyprctl activeworkspace -j | python3 -c "import sys,json; print(json.load(sys.stdin)['id'])")

case "$DIRECTION" in
  left)
    case "$CURRENT" in
      5) hyprctl keyword animation "workspaces,1,1.94,almostLinear,slide"
         hyprctl dispatch workspace 7 ;;
      1) hyprctl keyword animation "workspaces,1,1.94,almostLinear,slide"
         hyprctl dispatch workspace 5 ;;
    esac
    ;;
  right)
    case "$CURRENT" in
      5) hyprctl keyword animation "workspaces,1,1.94,almostLinear,slide"
         hyprctl dispatch workspace 1 ;;
      7) hyprctl keyword animation "workspaces,1,1.94,almostLinear,slide"
         hyprctl dispatch workspace 5 ;;
    esac
    ;;
  up)
    case "$CURRENT" in
      5) hyprctl keyword animation "workspaces,1,1.94,almostLinear,slidevert"
         hyprctl dispatch workspace 8 ;;
      3) hyprctl keyword animation "workspaces,1,1.94,almostLinear,slidevert"
         hyprctl dispatch workspace 5 ;;
    esac
    ;;
  down)
    case "$CURRENT" in
      5) hyprctl keyword animation "workspaces,1,1.94,almostLinear,slidevert"
         hyprctl dispatch workspace 3 ;;
      8) hyprctl keyword animation "workspaces,1,1.94,almostLinear,slidevert"
         hyprctl dispatch workspace 5 ;;
    esac
    ;;
esac
