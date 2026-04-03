# claude-kdctcli-skill

金蝶征信CLI，以 CLI 方式提供企业数据查询与调用能力，支持尽调、筛选和风险核查，直连智能体与AI自动化流程。，基于 [kdctcli](https://www.npmjs.com/package/kdctcli) 工具。

## 场景

此 skill 提供四大核心能力，当你在 Claude Code 中提出相关需求时会自动触发：

### 场景1：供应商准入/贷前主体深度尽调

告别多平台人工检索。在命令行输入企业代码，聚合该主体的基本面与风险点。

**触发示例：**
- "查询深圳市华为技术有限公司的经营情况"

**底层命令：**
```bash
kdctcli gssfreport --keyword "企业名称"
```

---

### 场景2：客户档案自动录入与验真

输入企业模糊名称，系统自动匹配标准信息，杜绝手工录入错漏。

**触发示例：**
- "帮我查询金蝶信用科技（深圳）有限公司的工商信息"

**底层命令：**
```bash
kdctcli companyinfo --name "企业名称"  
```

---

### 场景3：客户商机自动捕获

销售拓客数据源。通过命令行参数组合业务条件，批量提取符合要求的目标企业列表，第一时间提取精准线索。

**触发示例：**
- "帮我查询深圳地区xx行业的客户线索"

**底层命令：**
```bash
kdctcli clue --keyword "深圳" 
```

---

### 场景4：涉贷税务合规排查

一键调用税务数据，核查合作方是否存在重大违规，为财务合规提供客观的决策依据。

**触发示例：**
- "查一下XX公司有没有负面信息"

**底层命令：**
```bash
kdctcli freeze --keyword "企业名称"
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
| 负面信息 | "查一下XX公司有没有负面信息" |

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