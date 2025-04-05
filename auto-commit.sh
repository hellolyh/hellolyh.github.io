#!/bin/bash

# 获取当前时间戳（格式：2023-10-31 14:30:00）
timestamp=$(date +"%Y-%m-%d %H:%M:%S")

# 构造提交信息
commit_message="auto-commit.sh: update at $timestamp"
echo "$commit_message"

# 自动添加所有变更
git add .

# 检查是否有待提交的变更
if [ -n "$(git status --porcelain)" ]; then
  git commit -m "$commit_message"
  git push
else
  echo "No changes to commit."
fi