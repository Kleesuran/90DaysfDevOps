#!/bin/bash
TARGET_DIR="/opt/devops_tools/"
if [ -d "$TARGET_DIR" ]; then
  echo "success ,$TARGET_DIR already"
  ls -ld "$TARGET_DIR"
else
  echo "error,try to rebuild "
  sudo mkdir -p "$TARGET_DIR"
  sudo chown root:devops "$TARGET_DIR"
  sudo chmod 770 "$TARGET_DIR"
  echo "DONE!"
fi
