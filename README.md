```
modus-workspace-nav

Part of Modus — a custom DE I'm building from scratch for laptops, focused on energy efficiency and rethinking whether every UI convention we've inherited actually makes sense.

Modus-workspace-nav is a cross-shaped workspace layout for Hyprland. Navigate in 4 directions, it takes 1-2 swipes from anywhere.

The idea:
Most workspace setups are a straight line. You scroll left and right through them and the further you go, the more swipes it takes and the more confused I get.
This is different. Workspaces are arranged in a plus/cross shape with one in the center:
      [ 3 ]
[ 1 ] [ 5 ] [ 7 ]
      [ 8 ]

Workspace 5 is home, but honestly you can forget the numbers and start thinking in terms of up, down, left, and right.
You get 5 workspaces to work with in this layout. Every other workspace is exactly one swipe away.
You navigate with direction keys or touchpad gestures — up, down, left, right.
- For keyboard navigation I've chosen the "chronically gamer hand position on WASD" — modify it as you like!

The animation matches the direction so it feels physical.
That's the whole idea. Simple, but it changes how the desktop feels to use.
Since I got this working I personally fell in love with the organised feeling on a 13 inch laptop screen.
How? I automatically started handling it like I have a physical monitor setup in my head — the top workspace is where I keep my browser with YouTube and Claude open, the left is a terminal, the center is my preferred VS Code workspace. It happens automatically. You unconsciously map it to your own monitor preference.
That's why I wanted to share this with you all — hopefully it makes someone's day.

Two scripts handle everything:
nav.sh — navigate to a workspace in a direction
movewin.sh — move the active window in a direction

The ID numbering was chosen to get the swipe animation moving in the correct direction — I believe the workspace would otherwise animate the wrong way when swiping (it's been a while since I set this up).
Feel free to adapt the scripts, the IDs, or the layout to your own setup. The concept is the gift, the code is just one way to do it.

Note: Hyprland recently added Lua support and I think it would be great to implement this directly in the config instead of these loose scripts. When I rebuild my setup in Lua I'll share an updated version.

Where this navigation method can improve:
When you swipe on the trackpad, the workspace swap triggers after the swipe completes. I really wanted 1:1 motion tracking while swiping but haven't found a way to do it. If anyone knows whether this is possible with the new Lua support, please let me know!

Requirements:
- Hyprland
- Python

Disclaimer: Someone else may have come up with this idea before me — I don't claim to be first, but I can say I arrived at it on my own.
```
