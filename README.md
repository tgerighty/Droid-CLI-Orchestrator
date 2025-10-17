# Droid CLI Orchestrator

> 🤖 An intelligent AI orchestration system for coordinating specialized droids to accomplish complex development tasks

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Factory CLI](https://img.shields.io/badge/Factory%20CLI-%3E%3D0.17.0-blue)](https://factory.ai)
[![Node.js](https://img.shields.io/badge/Node.js-%3E%3D16.0.0-green)](https://nodejs.org)

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Quick Start](#quick-start)
- [How It Works](#how-it-works)
- [Architecture](#architecture)
- [Usage Examples](#usage-examples)
- [Available Droids](#available-droids)
- [Configuration](#configuration)
- [Documentation](#documentation)
- [Contributing](#contributing)

## 🌟 Overview

The **Factory CLI Orchestrator** is a master coordinator that manages complex development tasks by delegating work to specialized AI droids. Think of it as a senior engineer who breaks down big projects and assigns work to the right experts.

### Before Orchestrator
```
You: "Build user authentication"
└─ You manually: Pick backend droid → implement → switch to frontend droid 
   → implement → realize you forgot security → switch to security droid 
   → fix issues → switch to test droid
```

### With Orchestrator
```
You: "Build user authentication"
└─ Orchestrator: Analyzes task → Creates plan → Delegates to security-auditor,
   backend-architect, frontend-developer, test-automator → Synthesizes results → Done!
```

## ✨ Features

- **🎯 Intelligent Task Analysis** - Automatically analyzes task complexity and determines the best approach
- **🤝 Multi-Droid Coordination** - Coordinates multiple specialized AI droids with sequential, parallel, or hybrid execution
- **📊 Context Management** - Preserves and shares context between different phases and droids
- **✅ Quality Control** - Verifies integration, validates requirements, and ensures consistency
- **🔄 Result Synthesis** - Combines outputs from multiple droids into unified solutions
- **📝 Comprehensive Documentation** - Generates technical notes and implementation details
- **🔌 Extensible Architecture** - Plugin-based system for custom droids and workflows

## 🚀 Quick Start

### Prerequisites

- Factory CLI installed (`>=0.17.0`)
- Node.js (>=16.0.0)
- Git installed

### Installation

1. **Verify Orchestrator is Available**
   ```bash
   # Check if orchestrator exists in global location
   ls ~/.factory/droids/orchestrator.md
   
   # List all available droids
   ls ~/.factory/droids/
   ```

2. **Start Droid CLI**
   ```bash
   cd /path/to/your/project
   droid
   ```

3. **Select the Orchestrator**
   ```bash
   @orchestrator
   ```

4. **Give It a Task**
   ```
   "Add a commenting system to blog posts"
   ```

The orchestrator will:
1. 📊 Analyze the task complexity
2. 📋 Create an execution plan
3. 🤝 Show you the plan and ask for approval
4. 🚀 Coordinate specialized droids to complete the work
5. ✅ Synthesize and present the final result

## 🎯 How It Works

The orchestrator is a **conversational AI droid** that works through natural language. It uses the Task tool to delegate work to other specialized droids.

### Real Examples

#### Example 1: Simple Task
```bash
@orchestrator
"Fix the broken login button on the homepage"

# The orchestrator will:
# 1. Determine it's a frontend task
# 2. Delegate to @frontend-developer
# 3. Return the result
```

#### Example 2: Medium Task
```bash
@orchestrator
"Add user authentication with login and registration"

# The orchestrator will:
# 1. Delegate to @security-auditor for security design
# 2. Delegate to @backend-architect for API design
# 3. Delegate to @frontend-developer for UI
# 4. Delegate to @test-automator for tests
# 5. Synthesize all results
```

#### Example 3: Complex Task
```bash
@orchestrator
"Build a complete blog system with posts, comments, and categories"

# The orchestrator coordinates:
# - @backend-architect: API and database design
# - @database-admin: Database schema
# - @backend-typescript-architect: API implementation
# - @frontend-developer: UI components
# - @test-automator: Test suite
# - @security-auditor: Security review
```

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────┐
│              USER REQUEST                        │
└───────────────────┬─────────────────────────────┘
                    │
                    ▼
┌─────────────────────────────────────────────────┐
│         ORCHESTRATOR DROID                       │
│  • Task Analysis & Complexity Assessment        │
│  • Execution Plan Creation                       │
│  • Droid Selection & Delegation                  │
│  • Context Management                            │
│  • Result Synthesis                              │
└───────────┬─────────────────────────────────────┘
            │
            ├──────────┬──────────┬──────────┬─────────
            ▼          ▼          ▼          ▼
    ┌──────────┐ ┌──────────┐ ┌──────────┐ ┌──────────┐
    │ Frontend │ │ Backend  │ │ Security │ │  Test    │
    │Developer │ │Architect │ │ Auditor  │ │Automator │
    └──────────┘ └──────────┘ └──────────┘ └──────────┘
            │          │          │          │
            └──────────┴──────────┴──────────┘
                       │
                       ▼
            ┌────────────────────┐
            │  UNIFIED RESULT    │
            └────────────────────┘
```

### Core Components

1. **Orchestrator** - Master coordinator that analyzes tasks and delegates to specialized droids
2. **Specialized Droids** - AI agents with specific expertise (frontend, backend, security, testing, etc.)
3. **Task Delegation System** - Uses the Task tool to coordinate work between droids
4. **Context Management** - Preserves and shares context between different phases
5. **Result Synthesis** - Combines outputs from multiple droids into unified solutions

## 🤖 Available Droids

The orchestrator can coordinate various specialized droids.

### Where Droids Live
- **Global droids**: `~/.factory/droids/*.md` (system-wide, available to all projects)
- **Project droids**: `your-project/.factory/droids/*.md` (project-specific, override global)

**To list all available droids**:
```bash
# List global droids
ls ~/.factory/droids/

# List project-specific droids (if any)
ls .factory/droids/
```

### Development Droids
- **frontend-developer** - React, Next.js, UI components, styling
- **backend-architect** - API design, system architecture, database design
- **backend-typescript-architect** - TypeScript backend implementation
- **database-admin** - Database schema, migrations, optimization

### Quality & Security
- **security-auditor** - Security reviews, vulnerability scanning, best practices
- **test-automator** - Unit tests, integration tests, E2E tests
- **code-reviewer** - Code quality, best practices, refactoring suggestions

### Specialized Tasks
- **debugger** - Issue diagnosis, error analysis, troubleshooting
- **documentation-writer** - Technical documentation, API docs, guides
- **performance-optimizer** - Performance analysis, optimization strategies

## ⚙️ Configuration

### Project Structure

The Factory system supports droids in **two locations**:

#### 1. Global Droids (System-wide)
```
~/.factory/               # Global factory configuration
├── droids/
│   ├── orchestrator.md           ✅ Orchestrator definition
│   ├── frontend-developer.md     ✅ Specialized droids
│   ├── backend-architect.md
│   ├── security-auditor.md
│   └── ... (other system droids)
├── docs/                         # Documentation
│   ├── orchestrator-quickstart.md
│   ├── orchestrator-complete-user-guide.md
│   └── ...
└── config.json                   # Factory configuration
```

#### 2. Project-Specific Droids (Per project)
```
your-project/
├── .factory/              # Project-specific droids (overrides global)
│   └── droids/
│       ├── custom-droid.md      # Project-specific droid
│       ├── project-architect.md # Another project droid
│       └── ...                  # Add more as needed
├── src/
├── tests/
├── package.json
└── ...
```

> **📍 Important**: Project-specific droids (in `your-project/.factory/droids/`) **override** global droids with the same name!

### Custom Droids : https://docs.factory.ai/cli/configuration/custom-droids#custom-droids-subagents

You can create custom droids for your project in **either** location:

#### Option 1: Global Custom Droid (Available to all projects)
Save to: `~/.factory/droids/my-custom-droid.md`

#### Option 2: Project-Specific Droid (Available only to this project)
Save to: `your-project/.factory/droids/my-custom-droid.md`

```markdown
---
name: my-custom-droid
description: Specialized droid for my specific needs
model: claude-sonnet-4-5-20250929
tools: ["Execute", "Read", "Edit", "Grep"]
---

You are a specialized droid that helps with [specific task].

When invoked, you:
1. [First step]
2. [Second step]
3. [Third step]
```

#### Droid Locations Priority
1. **Project-specific** (`your-project/.factory/droids/`) - **Higher priority**
2. **Global** (`~/.factory/droids/`) - **Lower priority**

The orchestrator will first check for droids in the project's `.factory/droids/` folder, then fall back to the global `~/.factory/droids/` folder.

### Working Project Structure

**Projects that droids work on should have the following structure:**

#### Recommended Project Layout
```
your-project/                    # Your actual project
├── .factory/                    # Factory-specific project files
│   └── droids/                  # Project-specific droids (optional)
│       ├── custom-droid.md      # Your custom droids
│       ├── project-architect.md # Project-specific architect
│       └── ...                  # Other project droids
├── droids/                      # 📁 DROIDS FOLDER (Required)
│   ├── orchestrator.md          # Orchestrator droid definition
│   ├── frontend-developer.md    # Frontend specialist
│   ├── backend-architect.md     # Backend architect
│   ├── security-auditor.md      # Security specialist
│   ├── test-automator.md        # Testing automation
│   └── ...                      # All available agents
├── orchestrator/                # 📁 ORCHESTRATOR FOLDER (Required)
│   ├── context-manager.md       # Context management
│   ├── task-patterns.json       # Task patterns
│   ├── orchestrator-config.json # Configuration
│   └── ...                      # Orchestrator modules
├── src/                         # Your source code
├── tests/                       # Your test files
├── docs/                        # Your documentation
└── package.json                 # Your project config
```

> **🚀 IMPORTANT**: For droids to work properly on your project, ensure your project root contains:
> 1. **`droids/`** folder with all agent definitions
> 2. **`orchestrator/`** folder with orchestration modules
> 3. **Optional**: `.factory/droids/` for project-specific overrides

This structure allows droids to:
- Access specialized agents from the `droids/` folder
- Use orchestration capabilities from the `orchestrator/` folder  
- Override global droids with project-specific ones in `.factory/droids/`

## 📚 Documentation

Comprehensive documentation is available in the `/docs` directory:

- **[Quick Start Guide](docs/orchestrator-quickstart.md)** - Get started in 5 minutes
- **[Complete User Guide](docs/orchestrator-complete-user-guide.md)** - Comprehensive guide to all features
- **[How It Actually Works](docs/how-orchestrator-actually-works.md)** - Deep dive into the implementation
- **[Usage Examples](docs/orchestrator-examples.md)** - Real-world examples and patterns
- **[Capabilities Reference](docs/orchestrator-capabilities.md)** - Complete list of what the orchestrator can do
- **[Quick Reference](docs/orchestrator-quick-reference.md)** - Command and pattern reference

## 💡 Usage Examples

### Simple Bug Fix
```bash
@orchestrator
"The login button is not working properly"
```

### New Feature
```bash
@orchestrator
"Add a user profile page where users can view and edit their name, bio, and avatar"
```

### Complete System
```bash
@orchestrator
"Build a complete e-commerce checkout system with cart, payment processing, and order confirmation"
```

### Security Review
```bash
@orchestrator
"Review the security of our authentication system and fix any vulnerabilities"
```

### Performance Optimization
```bash
@orchestrator
"Analyze and optimize the performance of the dashboard page"
```

## 🧪 Testing

To test your orchestrator setup:

### Test 1: Verify Availability
```bash
@orchestrator
"What droids do you have available?"
```

### Test 2: Task Analysis
```bash
@orchestrator
"I need to add a contact form to my website. What's your plan?"
```

### Test 3: Actual Execution
```bash
@orchestrator
"Create a simple React component called ContactForm.tsx in src/components/"
```

## 🛠️ Troubleshooting

### Orchestrator doesn't respond
**Solution**: Make sure you're in Factory CLI first:
```bash
factory              # Start factory first
@orchestrator        # Then select droid
"task description"   # Then give task
```

### Orchestrator doesn't delegate tasks
**Solution**: Check that other droids exist in either location:
```bash
# Check global droids
ls ~/.factory/droids/
# Should show: frontend-developer.md, backend-architect.md, etc.

# Check project-specific droids (optional)
ls .factory/droids/
# May be empty if no project-specific droids are defined
```

### Need to see execution details
**Solution**: The orchestrator will show you its plan before execution. Review and approve the plan to see which droids will be used.

## 📖 Coding Guidelines

This project follows strict coding principles defined in `AGENTS.md`:

- **File Size Limit**: No file shall exceed 600 lines (ideal: 500-600)
- **Single Responsibility Principle**: Each file has one primary responsibility
- **Full Documentation**: All public functions have JSDoc/docstring documentation
- **Unit Tests**: Business logic files require corresponding `*.test.ts` files
- **Barrel Files**: Each feature directory has an `index.ts` barrel file
- **Dependency Injection**: Dependencies passed as arguments, not imported directly

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Create Custom Droids** - Build specialized droids for specific use cases
2. **Improve Documentation** - Help make the docs clearer and more comprehensive
3. **Share Examples** - Contribute real-world usage examples
4. **Report Issues** - Help identify bugs and improvement opportunities

## 📄 License

MIT License - see LICENSE file for details

## 🙏 Acknowledgments

- Built with [Factory CLI](https://factory.ai)
- Powered by Claude AI
- Inspired by the need for better AI agent coordination

## 📞 Support

- **Documentation**: See `/docs` directory
- **Issues**: Create an issue in the repository
- **Community**: Join the Factory CLI community

---

**Made with ❤️ using Factory CLI and Claude AI**
