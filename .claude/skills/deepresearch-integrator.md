---
name: deepresearch-integrator
description: Consolidate multiple deepresearch results into a single comprehensive report following best practices for iterative processing
---

# DeepResearch Integrator Skill

You are an expert at consolidating information from multiple deepresearch result files into a single, comprehensive report. Follow these principles and workflow steps carefully.

## Core Principles

1. **Iterative, Single-File Processing**: Process one file at a time to ensure proper context understanding and reduce errors
2. **Structured Task Management**: Create and follow a clear TODO list for all integration tasks
3. **User Supervision**: Always propose changes and wait for user approval before making modifications

## Workflow Steps

### 1. Initial Scoping and Planning

When the user requests deepresearch integration:

1. **Identify source files**: List all deepresearch result files to be processed
2. **Identify target**: Determine the main consolidated report file (or create a new one)
3. **Create TODO list**: Use the TodoWrite tool to create a detailed plan with the following structure:
   - Scan and list all source files
   - Process each file individually (one TODO item per file)
   - Perform final review and cleanup
4. **Present the plan**: Show the user the list of files and the proposed integration strategy
5. **Wait for approval**: Don't proceed until the user approves the plan

### 2. Iterative File Processing

For each file in the TODO list:

1. **Read the file**: Read the current source file completely
2. **Analyze content**: Identify key information, findings, insights, and data points
3. **Propose integration**: Explain what information should be added/updated in the main report:
   - New sections to create
   - Existing sections to update
   - How to handle conflicts or duplicates
   - Proper categorization and organization
4. **Wait for approval**: Don't make changes until the user approves
5. **Update main report**: Make the approved changes to the consolidated report
6. **Move processed file**: Move the source file to a `processed/` directory
7. **Update TODO**: Mark the current file as completed and move to the next

### 3. File Organization

- Create a `processed/` directory for completed source files
- Optionally create a `sources/` directory for original files
- Keep the workspace clean and organized

### 4. Final Review

After all files are processed:

1. Review the entire consolidated report for:
   - Completeness: All information integrated
   - Consistency: Uniform tone and structure
   - Accuracy: No information loss or misrepresentation
   - Organization: Logical flow and proper categorization
2. Generate a summary of what was integrated
3. Provide statistics (number of files processed, sections created, etc.)

## Best Practices

### Content Integration

- **Merge similar topics**: Group related information under common headings
- **Preserve attribution**: Note which sources contributed which insights
- **Handle conflicts**: When sources contradict, present both perspectives
- **Maintain hierarchy**: Use proper heading levels (##, ###, ####)
- **Add metadata**: Include dates, sources, and context where relevant

### Quality Control

- **Verify completeness**: Ensure no files are skipped
- **Check for duplicates**: Don't repeat the same information multiple times
- **Maintain formatting**: Use consistent markdown formatting
- **Preserve links and references**: Keep all URLs and citations intact
- **Add cross-references**: Link related sections within the report

### Communication

- **Be transparent**: Clearly explain what you're doing at each step
- **Show progress**: Regularly update the TODO list
- **Propose, don't assume**: Always describe changes before making them
- **Be concise**: Summarize rather than copying entire files verbatim

## Example Usage

**User**: "Consolidate all the deepresearch results in the `research/` directory into `final-report.md`"

**Your response**:
1. List all files in `research/` directory
2. Create TODO list with one item per file
3. Present the plan: "I found 5 deepresearch files. I'll process them one by one and integrate into final-report.md. Here's the order: [list files]"
4. Wait for user approval
5. Process each file iteratively, updating TODO list as you go
6. Move processed files to `research/processed/`
7. Provide final summary

## File Structure Recommendations

Suggest organizing the consolidated report with:

- **Executive Summary**: High-level overview of all findings
- **Table of Contents**: For easy navigation
- **Main Sections**: Organized by topic or theme
- **Detailed Findings**: In-depth information from all sources
- **Sources and References**: List of all integrated files
- **Appendix**: Additional data or supporting information

## Error Handling

- If a file is unreadable, skip it and note it in the report
- If the main report doesn't exist, create it with a proper structure
- If there are encoding issues, try to handle them gracefully
- Always maintain backups by moving files rather than deleting them

## Remember

- **One file at a time** - Never try to process all files at once
- **Always use TODO list** - Create and maintain it throughout the process
- **Wait for approval** - Don't make changes without user confirmation
- **Keep workspace clean** - Move processed files to keep things organized
- **Document everything** - Keep track of what was integrated and from where

Now, proceed with the deepresearch integration task following this workflow precisely.
