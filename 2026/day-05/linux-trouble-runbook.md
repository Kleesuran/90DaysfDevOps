󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
  uname --all
Linux klee 6.19.6-zen1-1-zen #1 ZEN SMP PREEMPT_DYNAMIC Wed, 04 Mar 2026 18:24:56 +0000 x86_64 GNU/Linux
󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
  df -h /
文件系统 大小 已用 可用 已用% 挂载点
/dev/sdb2 476G 149G 327G 32% /
󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
  df -g /run/media/klee/DATA-HDD-1/
df: 无效的选项 -- g
请尝试执行 "df --help" 来获取更多信息。
󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
  df -h /run/media/klee/DATA-HDD-1/
文件系统 大小 已用 可用 已用% 挂载点
/dev/sda2 466G 260G 207G 56% /run/media/klee/DATA-HDD-1
󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
  df -h /dev/nvmen0p1
df: /dev/nvmen0p1: 没有那个文件或目录
󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
  df -h /run/media/klee/DATA-M.2/
文件系统 大小 已用 可用 已用% 挂载点
/dev/nvme0n1p5 1.6T 577G 1.1T 36% /run/media/klee/DATA-M.2
󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
  df -h /dev/nvme0n1p1
文件系统 大小 已用 可用 已用% 挂载点
devtmpfs 7.8G 0 7.8G 0% /dev
󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-04 󰜥 󰘬 master
  free -h
总计 已用 空闲 共享 缓冲/缓存 可用
内存： 15Gi 6.8Gi 3.6Gi 357Mi 5.8Gi 8.7Gi
交换： 15Gi 0B 15Gi
󰪢 8s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-05 󰜥 󰘬 master
  ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head -n 6
PID PPID CMD %CPU %MEM
1084 1062 Hyprland --watchdog-fd 4 6.2 0.8
1654 1 /usr/lib/flclash/FlClash 5.4 2.2
1175 1 mpvpaper -o no-audio loop h 3.9 24.6
10487 10456 /opt/google/chrome-beta/chr 2.9 2.9
48608 10262 opencode 1.8 3.2
󰪢 0s 󰜥 󰉋 ••/90DaysfDevOps/2026/day-05 󰜥 󰘬 master
  sudo journalctl -p err..alert -n 10
[sudo] klee 的密码：
3月 13 22:44:44 klee kernel: ucsi_ccg 3-0008: ucsi_ccg_init failed - -110
3月 13 22:44:44 klee kernel: ucsi_ccg 3-0008: probe with driver ucsi_ccg failed with error -110
3月 13 22:44:46 klee kernel: Bluetooth: hci0: Failed to send firmware data (-38)
3月 13 22:44:48 klee kernel: Bluetooth: hci0: Failed to read MSFT supported features (-110)
3月 13 22:44:52 klee bluetoothd[792]: Failed to set default system config for hci0
3月 13 22:45:06 klee sddm-helper[984]: gkr-pam: unable to locate daemon control file
3月 13 23:19:11 klee sudo[12158]: pam_unix(sudo:auth): conversation failed
3月 13 23:19:11 klee sudo[12158]: pam_unix(sudo:auth): auth could not identify password for [klee]
3月 13 23:23:42 klee kactivitymanagerd[14423]: Couldn't start kglobalaccel from org.kde.kglobalaccel.service: QDBusError("org.freedesktop.DBus.Error.ServiceUnknown", "The name is not activatable")
3月 13 23:27:33 klee dbus-broker-launch[1029]: Original source was unlinked while parsing service file '/usr/share//dbus-1/services/org.freedesktop.systemd1.service'
