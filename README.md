# claude-kdctcli-skill

借贷产品查询 Claude Code 插件，基于 [kdctcli](https://www.npmjs.com/package/kdctcli) 工具。

## 功能

当你在 Claude Code 中询问借贷产品相关问题时，此 skill 会自动：

1. 检查 `kdctcli` 是否已安装，未安装则自动安装
2. 调用 `kdctcli products --limit 10` 获取借贷产品列表
3. 以表格形式展示产品名称、利率、额度、期限等信息

## 安装

在 Claude Code 中执行以下两条命令：

**第一步：添加 marketplace（只需执行一次）**

```
/plugin marketplace add kassa2code/claude-skill-kdct
```

**第二步：安装插件**

```
/plugin install claude-kdctcli-skill@kassa2code-claude-skill-kdct
```

## 使用

安装后，直接在 Claude Code 中提问即可自动触发：

- "帮我查询借贷产品"
- "有哪些贷款产品"
- "查询贷款产品列表"

也可以手动调用：

```
/claude-kdctcli-skill
```

## 依赖

- Node.js & npm（用于安装 kdctcli）
- [kdctcli](https://www.npmjs.com/package/kdctcli)（插件会自动安装）
