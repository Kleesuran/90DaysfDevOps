# Day 30 学习笔记：镜像分层与生命周期

## 1. 镜像分层 (Image Layers)
- **层 (Layers)**：镜像是由多个只读层叠加而成的（通过 `docker image history` 可见）。
- **共享机制**：相同的层在宿主机上只存储一份，节省了磁盘空间和下载带宽。
- **可写层**：容器启动时在只读层上添加的临时层，删除容器即销毁。

## 2. 容器生命周期
- **Created** -> **Running** -> **Paused** -> **Exited** -> **Removed**。
- **Exit Code (137)**：表示容器被强行终止 (SIGKILL)，通常见于 `docker stop` 超时或内存溢出。
- **Pause 状态限制**：暂停状态下的容器无法直接接收信号（如 `stop`），必须先解冻。

## 3. 高效清理命令
- `docker rm -f $(docker ps -aq)`：一键强制删除所有容器。
- `docker system prune -a`：彻底清理所有未使用的镜像、容器、网络和缓存。
