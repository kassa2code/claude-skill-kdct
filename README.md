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

### 方式一：一键脚本安装（推荐）

**Linux / macOS**

```bash
curl -fsSL https://raw.githubusercontent.com/kassa2code/claude-skill-kdct/main/install.sh | bash
```

**Windows（PowerShell）**

```powershell
irm https://raw.githubusercontent.com/kassa2code/claude-skill-kdct/main/install.ps1 | iex
```

默认安装到 user 范围（全局可用）。如需指定范围：

```bash
# Linux / macOS
bash <(curl -fsSL https://raw.githubusercontent.com/kassa2code/claude-skill-kdct/main/install.sh) project

# Windows
irm https://raw.githubusercontent.com/kassa2code/claude-skill-kdct/main/install.ps1 | iex -args project
```

可选范围：`user`（默认，全局）、`project`（仅当前项目）、`local`（本地，不提交 git）

### 方式二：Claude Code 命令安装

在 Claude Code 中依次执行以下两条命令：

**第一步：注册 marketplace**

```
/plugin marketplace add kassa2code/claude-skill-kdct
```

**第二步：安装插件**

```
/plugin install claude-kdctcli-skill@kassa2code-claude-skill-kdct
```

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
