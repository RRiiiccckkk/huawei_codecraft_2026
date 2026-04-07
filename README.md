# huawei_codecraft_2026

CODE CRAFT 普朗克计划 · 2026华为软件精英挑战赛 · 团队公共仓库

---

## 目录结构

```
huawei_codecraft_2026/
├── README.md          # 本文件，仓库说明与工作流
├── .gitignore         # 忽略编译产物与 IDE 配置
├── Makefile           # 编译 & 测试快捷命令
└── src/
    ├── main.cpp       # 主要提交代码入口
    └── solution.hpp   # 算法/解题逻辑头文件
```

---

## 分支策略（Branch Strategy）

> 不同思路使用不同分支，相互独立迭代，最终从各分支最优解中择优提交。

| 分支名                | 说明                         |
|-----------------------|------------------------------|
| `main`                | 最终提交版本（仅存放可提交代码） |
| `solution/greedy`     | 贪心思路                     |
| `solution/dp`         | 动态规划思路                 |
| `solution/simulation` | 模拟思路                     |
| `solution/<your-idea>`| 其他自定义思路               |

### 工作流

1. **开发阶段**：在对应思路分支上开发和提交。
   ```bash
   git checkout -b solution/<your-idea>   # 新建思路分支
   # ... 修改代码 ...
   git add src/                           # 只 add 当前思路的代码
   git commit -m "feat: <描述>"
   git push origin solution/<your-idea>
   ```

2. **评估阶段**：各思路分支独立跑测试，记录得分。
   ```bash
   make build    # 编译
   make test     # 本地测试（将测试数据放在 data/ 目录下）
   ```

3. **最终提交**：
   - 从每个思路分支中选出**本分支最优解**。
   - 在所有分支最优解中再**择优一次**，合并到 `main` 分支。
   ```bash
   git checkout main
   git merge --no-ff solution/<best-idea>   # 合并最优解
   git push origin main
   ```

---

## 快速开始

```bash
# 克隆仓库
git clone https://github.com/RRiiiccckkk/huawei_codecraft_2026.git
cd huawei_codecraft_2026

# 编译
make build

# 运行（从 stdin 读取输入）
./bin/solution < data/sample_input.txt

# 清理编译产物
make clean
```

---

## 提交规范

- `feat: <description>` — 新功能 / 新思路
- `fix: <description>`  — Bug 修复
- `perf: <description>` — 性能优化
- `test: <description>` — 测试用例
- `chore: <description>` — 其他杂项

