# claude-kdctcli-skill

借贷产品查询 Claude Code 插件，基于 [kdctcli](https://www.npmjs.com/package/kdctcli) 工具。

## 功能

当你在 Claude Code 中询问借贷产品相关问题时，此 skill 会自动：

1. 检查 `kdctcli` 是否已安装，未安装则自动安装
2. 调用 `kdctcli products --limit 10` 获取借贷产品列表
3. 以表格形式展示产品名称、利率、额度、期限等信息

## 前置条件

- [Claude Code](https://claude.ai/code) CLI 已安装
- Node.js & npm（用于自动安装 kdctcli）

## 安装

在 Claude Code 中依次执行以下两条命令：

**第一步：注册 marketplace**

```
/plugin marketplace add kassa2code/claude-skill-kdct
```

> 将本插件的 marketplace 注册到 Claude Code，只需执行一次。

**第二步：安装插件**

```
/plugin install claude-kdctcli-skill@kassa2code-claude-skill-kdct
```

> 从已注册的 marketplace 中安装 `claude-kdctcli-skill` 插件。

## 使用

安装后，在 Claude Code 中直接提问即可自动触发：

- "帮我查询借贷产品"
- "有哪些贷款产品"
- "查询贷款产品列表"

也可以手动调用：

```
/claude-kdctcli-skill
```

## 项目结构

```
.
├── .claude-plugin/
│   └── marketplace.json          # marketplace 配置
└── plugins/
    └── claude-kdctcli-skill/
        ├── .claude-plugin/
        │   └── plugin.json       # 插件元信息
        └── skills/
            └── claude-kdctcli-skill/
                └── SKILL.md      # skill 实现
```
