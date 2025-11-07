# DeepResearch Integrator - Claude Code Skill

A Claude Code skill for consolidating multiple deepresearch results into a single comprehensive report using best practices for iterative processing.

## Overview

The DeepResearch Integrator skill helps you efficiently merge information from multiple research files into one well-organized document. It follows a structured, iterative approach that processes one file at a time, ensuring accuracy and completeness while maintaining user control throughout the process.

## Features

- **Iterative Processing**: Handles one file at a time to ensure proper context understanding
- **Structured Workflow**: Creates and follows a detailed TODO list for all integration tasks
- **User Supervision**: Proposes changes and waits for approval before making modifications
- **Organized Output**: Creates a well-structured consolidated report with proper sections
- **File Management**: Automatically moves processed files to keep workspace clean
- **Quality Control**: Verifies completeness, consistency, and accuracy

## Installation

### Prerequisites

- [Claude Code](https://claude.com/code) installed and configured
- Git (for cloning this repository)

### Install the Skill

1. Clone this repository:
```bash
git clone https://github.com/dakesan/deepresearch-integrator.git
cd deepresearch-integrator
```

2. Copy the skill to your Claude Code skills directory:
```bash
# For global installation
cp -r .claude/skills/deepresearch-integrator.md ~/.claude/skills/

# Or for project-specific installation
cp -r .claude/skills/deepresearch-integrator.md your-project/.claude/skills/
```

3. Verify the skill is available:
```bash
# In Claude Code, the skill should now appear in the skills list
```

## Usage

### Basic Usage

1. **Prepare your research files**: Place all deepresearch result files in a directory (e.g., `research/`)

2. **Invoke the skill** in Claude Code:
```
/skill deepresearch-integrator
```

3. **Provide the task**: Tell Claude what you want to consolidate:
```
Consolidate all the deepresearch results in the research/ directory into consolidated-report.md
```

4. **Review the plan**: Claude will:
   - List all source files found
   - Create a TODO list
   - Present the integration strategy

5. **Approve and monitor**:
   - Review and approve the plan
   - Claude will process each file one by one
   - Approve each integration step

6. **Final review**: After all files are processed, review the consolidated report

### Example Session

```
You: /skill deepresearch-integrator

Claude: DeepResearch Integrator skill loaded. Ready to consolidate research files.

You: Consolidate all files in examples/deepresearch-results/ into examples/final-report.md

Claude: I found 3 deepresearch files to process:
1. research-001-ai-trends.md
2. research-002-quantum-computing.md
3. research-003-cybersecurity.md

I'll create a consolidated report with the following structure:
- Executive Summary
- AI Trends (from research-001)
- Quantum Computing (from research-002)
- Cybersecurity (from research-003)
- Summary and References

Shall I proceed?

You: Yes, go ahead

Claude: [Processes files one by one, updating TODO list, and creating the consolidated report]
```

## File Structure

```
deepresearch-integrator/
├── .claude/
│   └── skills/
│       └── deepresearch-integrator.md    # The skill file
├── examples/
│   ├── deepresearch-results/             # Sample research files
│   │   ├── research-001-ai-trends.md
│   │   ├── research-002-quantum-computing.md
│   │   └── research-003-cybersecurity.md
│   └── processed/                        # Processed files moved here
├── AI_workflow_instructions.md           # Workflow principles
└── README.md                             # This file
```

## How It Works

The skill follows a systematic workflow:

### 1. Initial Scoping and Planning
- Lists all source files to be processed
- Identifies or creates the target consolidated report
- Creates a detailed TODO list
- Presents the plan for user approval

### 2. Iterative File Processing
For each file:
- Reads the content completely
- Analyzes key information and findings
- Proposes specific changes to the main report
- Waits for user approval
- Updates the consolidated report
- Moves the file to `processed/` directory
- Updates the TODO list

### 3. File Organization
- Creates `processed/` directory for completed files
- Keeps workspace clean and organized
- Prevents accidental re-processing

### 4. Final Review
- Reviews entire consolidated report
- Checks completeness, consistency, and accuracy
- Generates summary statistics
- Provides final recommendations

## Best Practices

### Content Integration
- ✅ Merge similar topics under common headings
- ✅ Preserve attribution from sources
- ✅ Handle conflicts by presenting multiple perspectives
- ✅ Maintain proper heading hierarchy
- ✅ Add metadata (dates, sources, context)

### Quality Control
- ✅ Verify no files are skipped
- ✅ Avoid duplicate information
- ✅ Use consistent markdown formatting
- ✅ Preserve links and references
- ✅ Add cross-references between sections

## Configuration

You can customize the skill behavior by editing `.claude/skills/deepresearch-integrator.md`:

- Modify the report structure template
- Adjust the processing order logic
- Customize the file organization strategy
- Change the consolidation rules

## Troubleshooting

### Skill not found
- Ensure the skill file is in the correct directory
- Check that the file name matches: `deepresearch-integrator.md`
- Restart Claude Code if necessary

### Files not being processed
- Verify file paths are correct
- Check file permissions
- Ensure files are valid markdown format

### Integration issues
- Review the TODO list to see current progress
- Check the `processed/` directory for completed files
- Restart from the last completed file if needed

## Examples

See the `examples/` directory for:
- Sample deepresearch result files
- Expected output structure
- Common use cases

## Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

[Add your license here]

## Author

Created for efficient deepresearch result consolidation using Claude Code.

## Related Resources

- [Claude Code Documentation](https://docs.claude.com/claude-code)
- [Claude Code Skills Guide](https://docs.claude.com/claude-code/skills)
- [Markdown Guide](https://www.markdownguide.org/)

---

## 日本語ガイド

### 概要

DeepResearch Integratorスキルは、複数のリサーチファイルを1つの包括的なレポートに統合するためのClaude Codeスキルです。

### 特徴

- **段階的処理**: 1つずつファイルを処理し、正確性を確保
- **構造化ワークフロー**: TODOリストで進捗を管理
- **ユーザー監督**: 変更前に承認を求める
- **整理された出力**: 適切なセクション分けされたレポート
- **ファイル管理**: 処理済みファイルを自動的に移動
- **品質管理**: 完全性、一貫性、正確性を検証

### インストール

```bash
git clone https://github.com/dakesan/deepresearch-integrator.git
cd deepresearch-integrator
cp -r .claude/skills/deepresearch-integrator.md ~/.claude/skills/
```

### 使用方法

1. リサーチファイルをディレクトリに配置
2. Claude Codeで `/skill deepresearch-integrator` を実行
3. 統合タスクを指示
4. プランを確認・承認
5. 各ステップを確認しながら統合を進める

詳細は上記の英語ドキュメントをご参照ください。
