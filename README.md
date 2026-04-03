# claude-kdctcli-skill

企业信息与商机查询 Claude Code 插件，基于 [kdctcli](https://www.npmjs.com/package/kdctcli) 工具。

## 功能

此 skill 提供三大核心能力，当你在 Claude Code 中提出相关需求时会自动触发：

### 能力1：企业工商信息查询

查询企业的工商注册信息，包括统一社会信用代码、法定代表人、注册资本、经营范围等。

**触发示例：**
- "帮我查一下腾讯科技（深圳）有限公司的工商信息"
- "查询深圳市华为技术有限公司的基本信息"

**底层命令：**
```bash
kdctcli companyinfo --name "企业名称"
```

---

### 能力2：客户商机线索

根据关键字（地区、行业等）获取潜在客户商机线索。

**触发示例：**
- "帮我找一下深圳的商机线索"
- "获取制造业的客户线索"

**底层命令：**
```bash
kdctcli clue --keyword "关键字"
```

---

### 能力3：企业资质尽调报告

对指定企业进行资质尽职调查，输出结构化 Markdown 格式的尽调报告（含基本信息、股权结构、风险提示、资质认证等）。

**触发示例：**
- "对武义明世智能科技有限公司做一份尽调报告"
- "查询某某公司的企业资质"

**底层命令：**
```bash
kdctcli gssfreport --keyword "企业名称"
```

---

## 前置条件

- [Claude Code](https://claude.ai/code) CLI 已安装
- Node.js & npm（用于自动安装 kdctcli，未安装时 skill 会自动执行）

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

安装后，在 Claude Code 中直接用自然语言提问即可自动触发对应能力：

| 需求 | 示例提问 |
|------|---------|
| 工商信息查询 | "查一下XX公司的工商信息" |
| 商机线索 | "帮我找深圳的商机线索" |
| 尽调报告 | "对XX公司做一份尽调报告" |

也可以手动调用：

```
/claude-kdctcli-skill
```

## 项目结构

```
.
├── README.md
├── install.sh                        # Linux/macOS 一键安装脚本
├── install.ps1                       # Windows 一键安装脚本
├── .claude-plugin/
│   └── marketplace.json              # marketplace 配置
└── plugins/
    └── claude-kdctcli-skill/
        ├── .claude-plugin/
        │   └── plugin.json           # 插件元信息
        └── skills/
            └── claude-kdctcli-skill/
                └── SKILL.md          # skill 实现（含三大能力）
```
