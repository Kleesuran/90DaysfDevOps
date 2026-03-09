Basic("file"):

    ls
    cd
    pwd
    chmod
    chown
    mv
    rm
    sudo

Account:
useradd
passwd
chsh
package:
pacman
dnf
apt

systemd:
systemctl
journalctl

Network:

ip addr
ping
firewall-cmd

Boot:
mkinitcpio -P
grub
os-prober

systeminfo :

uname --all
fastfetch

when-install-arch:
fldsk
mount , umount

edit-any-txt-file:
nano ,nvim
3 - `lsof -i -P -n` : 列出所有网络连接
4 - `firewall-cmd --list-all` : 查看防火墙开放了哪些服务
### Network Troubleshooting (Advanced)
   2 - `ss -tunlp | grep <NAME>` : 查找程序占用的端口 (Modern)
   3 - `lsof -i -P -n` : 列出所有网络连接
   4 - `firewall-cmd --list-all` : 查看防火墙开放了哪些服务
   5 - `curl -I <IP:PORT>` : 仅请求 HTTP 头部，检查服务是否存活