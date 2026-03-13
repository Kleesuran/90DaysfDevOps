󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
  ps aux --sort=-%cpu | head -n 5
USER PID %CPU %MEM VSZ RSS TTY STAT START TIME COMMAND
klee 56124 100 0.0 13192 8636 pts/2 R+ 00:10 0:00 ps aux --sort=-%cpu
klee 1654 5.6 2.1 3178744 354272 ? Sl 3月13 4:46 /usr/lib/flclash/FlClash
klee 1084 5.3 0.8 877188 145804 tty1 Sl+ 3月13 4:35 Hyprland --watchdog-fd 4
klee 1175 3.7 13.3 9843580 2171948 tty1 Sl+ 3月13 3:13 mpvpaper -o no-audio loop hwdec=auto scale=bilinear interpolation=no video-sync=display-resample panscan=1.0 video-scale-x=1.0 video-scale-y=1.0 video-align-x=0.5 video-align-y=0.5 load-scripts=no DP-2 /run/media/klee/DATA-M.2/SteamLibrary/steamapps/workshop/content/431960/3369171553/shiroko.mp4
󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
  systemctl status docker
Unit docker.service could not be found.
󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
  systemctl status podman
○ podman.service - Podman API Service
Loaded: loaded (/usr/lib/systemd/system/
podman.service; disabled; preset: disabled)
Active: inactive (dead)
TriggeredBy: ○ podman.socket
Docs: man:podman-system-service(1)
󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
  journalctl -u sddm -n 10
3月 13 22:45:06 klee sddm-helper[984]: gkr-pam: unable to locate daemon con
trol file
3月 13 22:45:06 klee sddm-helper[984]: gkr-pam: stashed password to try later in open session
3月 13 22:45:06 klee sddm-helper[984]: pam_kwallet5(sddm:auth): pam
\_kwallet5: pam_sm_authenticate
3月 13 22:45:06 klee sddm-helper[984]: [PAM] returning.
3月 13 22:45:06 klee sddm[848]: Authentication for user "klee" su
ccessful
3月 13 22:45:06 klee sddm-helper[984]: pam_kwallet5(sddm:setcred):
pam_kwallet5: pam_sm_setcred
3月 13 22:45:06 klee sddm-helper[984]: pam_unix(sddm:session): session opened for user klee(uid=100 0) by klee(uid=0)
3月 13 22:45:06 klee sddm[848]: Auth: sddm-helper exited successful
ly
3月 13 22:45:06 klee sddm[848]: Greeter stopped. SDDM::Auth::HELPER
\_SUCCESS
3月 13 22:45:07 klee sddm[848]: Session started true
󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
