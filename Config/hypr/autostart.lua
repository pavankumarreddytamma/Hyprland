-------------------
---- AUTOSTART ----
-------------------

 hl.on("hyprland.start", function () 
   hl.exec_cmd("kitty")
   hl.exec_cmd("nm-applet")
   hl.exec_cmd("waybar")
   hl.exec_cmd("systemctl --user start hyprpolkitagent")
   hl.exec_cmd("awww-daemon")
   hl.exec_cmd("hypridle")
   hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
   hl.exec_cmd("hyprctl setcursor GoogleDot-Black 24")
 end)