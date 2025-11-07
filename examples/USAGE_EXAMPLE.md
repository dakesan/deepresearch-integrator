# DeepResearch Integrator - Usage Example

This document demonstrates how to use the DeepResearch Integrator skill with the provided example files.

## Example Scenario

You have conducted three separate deepresearch sessions on different technology topics:
1. AI Trends 2025
2. Quantum Computing Progress
3. Cybersecurity Landscape

Now you want to consolidate these findings into a single comprehensive technology trends report.

## Step-by-Step Example

### Step 1: Invoke the Skill

In Claude Code, type:
```
/skill deepresearch-integrator
```

### Step 2: Provide the Task

Once the skill is loaded, provide your consolidation request:
```
Consolidate all deepresearch results from examples/deepresearch-results/
into examples/technology-trends-2025.md
```

### Step 3: Review the Plan

Claude will analyze the files and present a plan:

```
I found 3 deepresearch result files to process:

1. research-001-ai-trends.md (AI Trends 2025)
2. research-002-quantum-computing.md (Quantum Computing Progress)
3. research-003-cybersecurity.md (Cybersecurity Landscape)

TODO List:
✓ Scan source directory
⏳ Process research-001-ai-trends.md
⏳ Process research-002-quantum-computing.md
⏳ Process research-003-cybersecurity.md
⏳ Create consolidated structure
⏳ Final review and cleanup

I'll create a consolidated report with this structure:
- Executive Summary
- Technology Trends Overview
  - Artificial Intelligence
  - Quantum Computing
  - Cybersecurity
- Market Analysis
- Recommendations
- Sources and References

Shall I proceed with this plan?
```

### Step 4: Approve the Plan

Respond with approval:
```
Yes, please proceed
```

### Step 5: Review Each Integration

For each file, Claude will:

**Processing File 1:**
```
Now processing: research-001-ai-trends.md

Key information found:
- Multimodal AI systems adoption
- AI efficiency improvements
- Regulatory developments
- Market statistics ($500B market size, 72% adoption)

Proposed integration:
1. Add "Artificial Intelligence Trends" section
2. Create subsections for:
   - Multimodal AI Systems
   - Efficiency Improvements
   - Regulatory Landscape
3. Add AI market statistics to Market Analysis section
4. Include recommendations in main recommendations section

Shall I integrate this information?
```

Approve each step:
```
Yes, looks good
```

### Step 6: Monitor Progress

Claude updates the TODO list after each file:

```
✓ Scan source directory
✓ Process research-001-ai-trends.md
⏳ Process research-002-quantum-computing.md
⏳ Process research-003-cybersecurity.md
⏳ Create consolidated structure
⏳ Final review and cleanup

File moved to: examples/processed/research-001-ai-trends.md
```

### Step 7: Complete Remaining Files

The process repeats for each remaining file:
- research-002-quantum-computing.md
- research-003-cybersecurity.md

### Step 8: Final Review

After all files are processed:

```
✓ All files processed successfully!

Summary:
- Files processed: 3
- Sections created: 8
- Total findings integrated: 15+
- Market data points: 12

The consolidated report has been created at:
examples/technology-trends-2025.md

Key features of the report:
- Comprehensive overview of 3 major technology areas
- Integrated market analysis and statistics
- Unified recommendations section
- Proper source attribution
- Cross-references between related topics

Processed files have been moved to:
examples/processed/

Would you like me to review any specific section of the report?
```

## Expected Output Structure

The resulting `technology-trends-2025.md` will contain:

```markdown
# Technology Trends 2025: Comprehensive Analysis

*Consolidated from 3 deepresearch sessions*
*Report generated: [Date]*

## Executive Summary

[High-level overview of all three technology areas]

## 1. Artificial Intelligence Trends

### 1.1 Multimodal AI Systems
[Content from research-001]

### 1.2 AI Efficiency Improvements
[Content from research-001]

### 1.3 Regulatory Developments
[Content from research-001]

## 2. Quantum Computing Progress

### 2.1 Hardware Breakthroughs
[Content from research-002]

### 2.2 Software Ecosystem
[Content from research-002]

### 2.3 Commercial Applications
[Content from research-002]

## 3. Cybersecurity Landscape

### 3.1 Emerging Threats
[Content from research-003]

### 3.2 Defense Technologies
[Content from research-003]

### 3.3 Compliance and Standards
[Content from research-003]

## Market Analysis

| Technology Area | Market Size | Growth Rate | Key Players |
|----------------|-------------|-------------|-------------|
| AI | $500B | - | [Multiple] |
| Quantum Computing | $15B (by 2027) | - | IBM, Google, IonQ |
| Cybersecurity | $215B | - | [Various] |

## Recommendations

1. [AI recommendations]
2. [Quantum computing recommendations]
3. [Cybersecurity recommendations]

## Sources and References

1. research-001-ai-trends.md - AI Trends 2025
2. research-002-quantum-computing.md - Quantum Computing Progress
3. research-003-cybersecurity.md - Cybersecurity Landscape

---
*Report compiled using DeepResearch Integrator*
```

## Tips for Best Results

1. **File Naming**: Use descriptive names for research files (e.g., `research-001-topic.md`)

2. **Consistent Structure**: Keep similar structures in source files for easier integration

3. **Review Each Step**: Don't rush - review each integration proposal carefully

4. **Provide Feedback**: If you want changes to how information is organized, tell Claude

5. **Save Originals**: The skill moves files to `processed/` but doesn't delete them

## Customization

You can customize the consolidation by:

- **Specifying structure**: "Organize by priority instead of topic"
- **Filtering content**: "Only include key findings, skip detailed statistics"
- **Adding analysis**: "Add a comparison section between the three areas"
- **Custom formatting**: "Use tables for all statistics"

Example:
```
Consolidate the research files, but organize by market impact (high/medium/low)
rather than by topic. Include a cross-impact analysis section.
```

## Try It Yourself

Run the example with the provided sample files:

```bash
# From the deepresearch-integrator directory
cd examples
# Then in Claude Code:
# /skill deepresearch-integrator
# Consolidate all files in deepresearch-results/ into technology-trends-2025.md
```

## Next Steps

After trying the example:
1. Use the skill with your own deepresearch results
2. Experiment with different organization structures
3. Customize the skill file if needed
4. Share your feedback and improvements

---

For more information, see the main README.md
