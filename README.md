# huawei_codecraft_2026

2026 华为软件精英挑战赛 · 团队代码仓库

## 文件

| 文件 | 说明 |
|------|------|
| `main.cpp` | 提交代码，在这里写解题逻辑 |
| `Makefile` | 编译与运行快捷命令 |
| `.gitignore` | 忽略编译产物与本地测试数据 |

## 常用命令

```bash
make        # 编译 → 生成 solution
make run    # 编译并运行（从 stdin 读取）
make clean  # 删除编译产物
```

## 分支策略

每种思路开一个分支，互不干扰，最终从各分支择优合并到 `main` 提交。

```bash
# 新建思路分支
git checkout -b solution/我的思路

# 开发完提交
git add main.cpp
git commit -m "描述"
git push origin solution/我的思路

# 最终：把最优解合并到 main
git checkout main
git merge --no-ff solution/最优思路
```

