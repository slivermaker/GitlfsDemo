#!/bin/bash
# 测试提交
git commit --allow-empty -m "总测试提交"
echo "=== 提交日志 ==="
# 测试推送（模拟远程）
git push origin main --force
echo "=== 推送日志写入完成 ==="
# 测试合并
git checkout -b feature
git commit --allow-empty -m "总测试合并"
git checkout main
git merge feature
echo "=== 合并日志写入完成 ==="
# 测试分支切换
git checkout feature
echo "=== 分支切换日志写入完成 ==="
# 测试变基
git rebase main
echo "=== 变基日志写入完成 ==="
