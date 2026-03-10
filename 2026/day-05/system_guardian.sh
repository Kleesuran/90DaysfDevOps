#!/bin/bash

# 1. 身份验证
if [[ $USER == "klee" ]]; then
  echo "Welcome, master. The date is $(date)"
else
  echo "Unauthorized access: You are not klee."
  exit 1
fi

# 2. 系统信息检查
if command -v fastfetch >/dev/null 2>&1; then
  # 直接运行，不要套 $( )
  fastfetch
else
  echo "Please install fastfetch to get a better experience."
fi

# 3. 磁盘空间预警
# 我们把获取数字的逻辑先存进一个变量，这样代码更清晰
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [[ $DISK_USAGE -gt 80 ]]; then
  echo "⚠️ WARNING: Disk usage is critically high ($DISK_USAGE%)!"
else
  echo "✅ Disk usage is fine ($DISK_USAGE%)."
fi

# 4. 交互式诊断
read -p "Do you want to check memory usage top 5? (y/n): " answer

if [[ $answer == "y" || $answer == "Y" ]]; then
  # 直接运行
  ps aux --sort=-%mem | head -n 6
else
  echo "Skip memory check."
fi

# 5. 归档
echo "Check completed at $(date)" >>health_report.txt
echo "Report appended to health_report.txt"
