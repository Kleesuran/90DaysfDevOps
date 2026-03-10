#!/bin/bash

echo "--- Day 05: 逻辑判断实战 ---"

# 1. 检查文件是否存在
if [ -f "/etc/passwd" ]; then
  echo "✅ [SUCCESS] 发现系统用户配置文件。"
else
  echo "❌ [ERROR] 警报！/etc/passwd 丢失！"
fi

# 2. 数字逻辑判断
read -p "请输入一个压力测试百分比 (0-200): " NUM
if [ $NUM -gt 100 ]; then
  echo "⚠️ 警告：压力值 $NUM% 超过阈值，系统可能崩溃！"
else
  echo "🟢 系统运行在安全区间 ($NUM%)。"
fi

# 3. 进阶：检查工具安装情况 (DevOps 常用技巧)
# command -v 是检查命令是否可用的最佳方式
if command -v docker &>/dev/null; then
  echo "🐳 发现 Docker，版本为: $(docker --version)"
else
  echo "⚠️ 未发现 Docker。提示：在 Arch 上运行 'sudo pacman -S docker' 安装。"
fi
