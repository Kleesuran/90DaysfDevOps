#!/usr/bin/bash
read -p "请输入年龄: " AGE

# 使用正则检查 AGE 是否全是数字
if [[ ! $AGE =~ ^[0-9]+$ ]]; then
  echo "❌ 错误：请输入有效的数字！"
  exit 1
fi
