# 1. 使用轻量的 Nginx 镜像
FROM nginx:alpine
# 2. 设置工作目录（虽然 Nginx 默认不需要，但这是好习惯）
WORKDIR /usr/share/nginx/html
# 3. 将本地的 index.html 拷贝到容器里的当前目录（即 Nginx 的网页根目录）
COPY index.html .
# 4. 声明我们要用到 80 端口
EXPOSE 80
# 注意：nginx:alpine 镜像已经写好了启动命令，所以我们不需要再写 CMD
