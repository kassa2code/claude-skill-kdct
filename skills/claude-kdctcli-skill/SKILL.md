---
name: claude-kdctcli-skill
description: 查询借贷产品信息。当用户需要查询借贷产品、贷款产品列表或相关产品数据时使用此 skill。
argument-hint: [query]
allowed-tools: Bash
---

## 借贷产品查询 (KDCT CLI)

你正在帮助用户查询借贷产品信息，请按以下步骤执行：

### 第一步：检查 kdctcli 是否已安装

运行以下命令检查 `kdctcli` 是否可用：

```bash
kdctcli --version 2>/dev/null || echo "NOT_INSTALLED"
```

如果输出包含 `NOT_INSTALLED`，说明工具未安装，执行第二步。否则直接跳到第三步。

### 第二步：安装 kdctcli

如果 `kdctcli` 未安装，运行以下命令进行全局安装：

```bash
npm install -g kdctcli --force
```

安装完成后，再次验证安装是否成功：

```bash
kdctcli --version
```

### 第三步：查询借贷产品

运行以下命令获取借贷产品列表：

```bash
kdctcli products --limit 10
```

### 第四步：展示结果

将查询结果以清晰易读的格式展示给用户，包括产品名称、利率、额度等关键信息。如果结果是 JSON 格式，请解析并以表格或列表形式呈现。
