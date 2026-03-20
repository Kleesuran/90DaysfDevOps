podman exec -it my-arch /bin/bash
[root@cb6a902b3d5a /]# cd /var/shared-code/
[root@cb6a902b3d5a shared-code]# pacman -S nvim
warning: database file for 'core' does not exist (use '-Sy' to download)
warning: database file for 'extra' does not exist (use '-Sy' to download)
error: target not found: nvim
[root@cb6a902b3d5a shared-code]# pacman -Sy nvim
:: Synchronizing package databases...
core downloading...
extra downloading...
resolving dependencies...
looking for conflicting packages...

Package (17) New Version Net Change Download Size

core/libgcc 15.2.1+r604+g0b99615a8aef-1 0.17 MiB 0.08 MiB
extra/libluv 1.51.0-1 0.19 MiB 0.06 MiB
extra/libutf8proc 2.11.3-1 0.38 MiB 0.07 MiB
extra/libuv 1.52.1-1 0.64 MiB 0.26 MiB
extra/libvterm 0.3.3-2 0.14 MiB 0.05 MiB
extra/lua51-lpeg 1.1.0-4 0.06 MiB 0.03 MiB
extra/luajit 2.1.1772619647+659a616-1 0.81 MiB 0.32 MiB
extra/msgpack-c 6.1.0-2 0.13 MiB 0.03 MiB
extra/tree-sitter 0.25.10-3 0.24 MiB 0.11 MiB
extra/tree-sitter-c 0.24.1-1 0.60 MiB 0.06 MiB
extra/tree-sitter-lua 0.5.0-1 0.07 MiB 0.02 MiB
extra/tree-sitter-markdown 0.5.1-1 0.76 MiB 0.12 MiB
extra/tree-sitter-query 0.7.0-1 0.05 MiB 0.01 MiB
extra/tree-sitter-vim 0.8.1-1 0.01 MiB 0.01 MiB
extra/tree-sitter-vimdoc 4.0.0-1 0.18 MiB 0.03 MiB
extra/unibilium 2.1.2-1 0.14 MiB 0.08 MiB
extra/neovim 0.11.6-1 28.86 MiB 6.84 MiB

Total Download Size: 8.17 MiB
Total Installed Size: 33.41 MiB

:: Proceed with installation? [Y/n]
:: Retrieving packages...
neovim-0.11.6-1-x86_64 downloading...
luajit-2.1.1772619647+659a616-1-x86_64 downloading...
libuv-1.52.1-1-x86_64 downloading...
tree-sitter-markdown-0.5.1-1-x86_64 downloading...
tree-sitter-0.25.10-3-x86_64 downloading...
unibilium-2.1.2-1-x86_64 downloading...
libgcc-15.2.1+r604+g0b99615a8aef-1-x86_64 downloading...
libutf8proc-2.11.3-1-x86_64 downloading...
tree-sitter-c-0.24.1-1-x86_64 downloading...
libluv-1.51.0-1-x86_64 downloading...
libvterm-0.3.3-2-x86_64 downloading...
tree-sitter-vimdoc-4.0.0-1-x86_64 downloading...
msgpack-c-6.1.0-2-x86_64 downloading...
lua51-lpeg-1.1.0-4-x86_64 downloading...
tree-sitter-lua-0.5.0-1-x86_64 downloading...
tree-sitter-query-0.7.0-1-x86_64 downloading...
tree-sitter-vim-0.8.1-1-x86_64 downloading...
checking keyring...
checking package integrity...
loading package files...
checking for file conflicts...
error: failed to commit transaction (conflicting files)
libgcc: /usr/lib/libgcc_s.so exists in filesystem (owned by gcc-libs)
libgcc: /usr/lib/libgcc_s.so.1 exists in filesystem (owned by gcc-libs)
libgcc: /usr/share/licenses/gcc-libs/RUNTIME.LIBRARY.EXCEPTION exists in filesystem (owned by gcc-libs)
Errors occurred, no packages were upgraded.
[root@cb6a902b3d5a shared-code]# nvim hello.sh
bash: nvim: command not found
[root@cb6a902b3d5a shared-code]# pacman -Sy nvim
:: Synchronizing package databases...
core downloading...
extra downloading...
resolving dependencies...
looking for conflicting packages...

Package (17) New Version Net Change

core/libgcc 15.2.1+r604+g0b99615a8aef-1 0.17 MiB
extra/libluv 1.51.0-1 0.19 MiB
extra/libutf8proc 2.11.3-1 0.38 MiB
extra/libuv 1.52.1-1 0.64 MiB
extra/libvterm 0.3.3-2 0.14 MiB
extra/lua51-lpeg 1.1.0-4 0.06 MiB
extra/luajit 2.1.1772619647+659a616-1 0.81 MiB
extra/msgpack-c 6.1.0-2 0.13 MiB
extra/tree-sitter 0.25.10-3 0.24 MiB
extra/tree-sitter-c 0.24.1-1 0.60 MiB
extra/tree-sitter-lua 0.5.0-1 0.07 MiB
extra/tree-sitter-markdown 0.5.1-1 0.76 MiB
extra/tree-sitter-query 0.7.0-1 0.05 MiB
extra/tree-sitter-vim 0.8.1-1 0.01 MiB
extra/tree-sitter-vimdoc 4.0.0-1 0.18 MiB
extra/unibilium 2.1.2-1 0.14 MiB
extra/neovim 0.11.6-1 28.86 MiB

Total Installed Size: 33.41 MiB

:: Proceed with installation? [Y/n]
checking keyring...
checking package integrity...
loading package files...
checking for file conflicts...
error: failed to commit transaction (conflicting files)
libgcc: /usr/lib/libgcc_s.so exists in filesystem (owned by gcc-libs)
libgcc: /usr/lib/libgcc_s.so.1 exists in filesystem (owned by gcc-libs)
libgcc: /usr/share/licenses/gcc-libs/RUNTIME.LIBRARY.EXCEPTION exists in filesystem (owned by gcc-libs)
Errors occurred, no packages were upgraded.
[root@cb6a902b3d5a shared-code]# vi hello.sh
bash: vi: command not found
[root@cb6a902b3d5a shared-code]# cat <<EOF > hello.sh

> #!/bin/bash
> echo "hello,world!This is ARCH "
> EOF
> [root@cb6a902b3d5a shared-code]# ls -l hello.sh
> -rw-r--r-- 1 root root 45 Mar 16 15:02 hello.sh
> [root@cb6a902b3d5a shared-code]# ./hello.sh
> bash: ./hello.sh: Permission denied
> [root@cb6a902b3d5a shared-code]# chmod 755 hello.sh
> [root@cb6a902b3d5a shared-code]# ./hello.sh
> hello,world!This is ARCH
> [root@cb6a902b3d5a shared-code]# chmod 444 hello.sh
> [root@cb6a902b3d5a shared-code]# echo "DAMN" > hello.sh
> [root@cb6a902b3d5a shared-code]# cat hello.sh
> DAMN
> [root@cb6a902b3d5a shared-code]# cd ..
> [root@cb6a902b3d5a var]# ls
> cache db empty games lib local lock log mail opt run shared-code spool tmp
> [root@cb6a902b3d5a var]# chmod 644 shared-code/
> [root@cb6a902b3d5a var]# cd shared-code/
> [root@cb6a902b3d5a shared-code]# ls
> hello.sh project_end.txt project_start.txt
> [root@cb6a902b3d5a shared-code]# chmod 755 /var/shared-code/
> [root@cb6a902b3d5a shared-code]# su coder1
> [coder1@cb6a902b3d5a shared-code]$ mkdir my_cave && chmod 644 my_cave
> mkdir: cannot create directory ‘my_cave’: Permission denied
> [coder1@cb6a902b3d5a shared-code]$ ls
> hello.sh project_end.txt project_start.txt
> [coder1@cb6a902b3d5a shared-code]$ cd ..
> [coder1@cb6a902b3d5a var]$ cd shared-code/
> [coder1@cb6a902b3d5a shared-code]$ mkdir my_cave && chmod 644 my_cave
> mkdir: cannot create directory ‘my_cave’: Permission denied
> [coder1@cb6a902b3d5a shared-code]$ exit
> exit
> [root@cb6a902b3d5a shared-code]# chmod 775 /var/shared-code/
> [root@cb6a902b3d5a shared-code]# su coder1
> [coder1@cb6a902b3d5a shared-code]$ mkdir my_cave && chmod 644 my_cave
> [coder1@cb6a902b3d5a shared-code]$ cd my_cave/
> bash: cd: my_cave/: Permission denied
> [coder1@cb6a902b3d5a shared-code]$ touch my_cave/hellov2.txt
> touch: cannot touch 'my_cave/hellov2.txt': Permission denied
> [coder1@cb6a902b3d5a shared-code]$
