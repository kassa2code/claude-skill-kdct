# claude-kdfcli-skill

借贷产品查询 Claude Code 插件，基于 [@kassa2npm/kdctcli](https://www.npmjs.com/package/@kassa2npm/kdctcli) 工具。

## 功能

当你在 Claude Code 中询问借贷产品相关问题时，此 skill 会自动：

1. 检查 `kdctcli` 是否已安装，未安装则自动安装
2. 调用 `kdctcli products --limit 10` 获取借贷产品列表
3. 以表格形式展示产品名称、利率、额度、期限等信息

## 安装

在 Claude Code 中执行以下命令：

```
/plugin marketplace add kassa2code/claude-skill-kdct
/plugin install claude-kdfcli-skill@kassa2code-claude-skill-kdct
```

## 使用

安装后，直接在 Claude Code 中提问即可自动触发：

- "帮我查询借贷产品"
- "有哪些贷款产品"
- "查询贷款产品列表"

也可以手动调用：

```
/claude-kdfcli-skill
```

## 依赖

- Node.js & npm（用于安装 kdctcli）
- [@kassa2npm/kdctcli](https://www.npmjs.com/package/@kassa2npm/kdctcli)（插件会自动安装）
