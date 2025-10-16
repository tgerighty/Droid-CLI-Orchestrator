# Orchestrator Quick Start Guide

Welcome to the Factory CLI Orchestrator! This guide gets you started in 5 minutes.

## What is the Orchestrator?

The Orchestrator is a **master coordinator droid** that manages complex tasks by delegating work to specialized droids. Think of it as a senior engineer who breaks down big projects and assigns work to the right experts.

### Before Orchestrator
```
You: "Build user authentication"
└─ You manually: Pick backend droid → implement → switch to frontend droid → implement → realize you forgot security → switch to security droid → fix issues → switch to test droid
```

### With Orchestrator
```
You: "Build user authentication"
└─ Orchestrator: Analyzes task → Creates plan → Delegates to security-auditor, backend-architect, frontend-developer, test-automator → Synthesizes results → Done!
```

## Quick Start

### Step 1: Verify Orchestrator is Available
```bash
# Check if orchestrator droid exists
ls ~/.factory/droids/orchestrator.md
```

If the file exists, you're good to go! ✅

### Step 2: Invoke the Orchestrator
```bash
# Start Factory CLI
factory

# Or if already in Factory CLI
@orchestrator
```

### Step 3: Describe Your Task
Just tell the orchestrator what you want to accomplish:

```
"Add a commenting system to blog posts"
```

The orchestrator will:
1. 📊 Analyze the task complexity
2. 📋 Create an execution plan
3. 🤝 Show you the plan and ask for approval
4. 🚀 Execute by delegating to specialist droids
5. 🎯 Synthesize and present results

## When to Use the Orchestrator

### ✅ Use Orchestrator For:

- **Multi-domain tasks**: "Build a payment processing system"
- **Complete features**: "Add real-time notifications"
- **Complex implementations**: "Implement OAuth with multiple providers"
- **Quality-critical tasks**: Anything needing security review
- **When unsure**: Don't know which droid to use? Orchestrator decides!

### ❌ Use Direct Droid For:

- **Simple fixes**: "Fix button alignment" → @frontend-developer
- **Single-file edits**: "Update API endpoint" → @backend-architect
- **Quick styling**: "Change color scheme" → @frontend-developer
- **Known specialist**: You know exactly which droid you need

## Example Usage Patterns

### Pattern 1: Simple Request
```
You: "Add a user profile page"

Orchestrator:
├─ Analyzes: Medium complexity, needs backend + frontend
├─ Plans: Architecture → Implementation → Testing
├─ Executes: Delegates to backend-architect, frontend-developer, test-automator
└─ Result: Complete profile feature with tests
```

### Pattern 2: With Constraints
```
You: "Build authentication but use PostgreSQL and NextAuth.js"

Orchestrator:
├─ Acknowledges constraints
├─ Plans around your tech requirements
└─ Delegates with constraint context included
```

### Pattern 3: Security-Critical
```
You: "Implement payment processing with Stripe"

Orchestrator:
├─ Identifies high-risk task
├─ Involves security-auditor early and throughout
├─ Adds extra review phases
└─ Provides security checklist
```

## Understanding Orchestrator Output

### Phase 1: Task Analysis
```yaml
🎯 Task Analysis:
Complexity: Medium
Domains: Backend, Frontend, Testing
Strategy: Hybrid (sequential setup, parallel implementation)
Estimated Duration: 30-40 minutes
```

### Phase 2: Execution Plan
```
📋 Execution Plan:

Phase 1: Architecture [Sequential]
  → backend-architect: Design API and database schema
  
Phase 2: Implementation [Parallel]
  → backend-typescript-architect: Implement API endpoints
  → frontend-developer: Build UI components
  
Phase 3: Testing [Sequential]
  → test-automator: Create test suite
```

### Phase 3: Execution Progress
```
🔄 Executing Phase 1...
  ✅ backend-architect completed
     - Created: src/db/schema/users.sql
     - Created: docs/api/user-api.md
```

### Phase 4: Final Synthesis
```
🎯 Task Complete: User Profile Feature

Files Created (8):
- src/api/profile.ts
- src/components/profile/ProfileView.tsx
- src/components/profile/ProfileEdit.tsx
[...]

Next Steps:
1. Test the profile feature: npm test profile
2. Check the UI: http://localhost:3000/profile
3. Review API docs: docs/api/profile-api.md
```

## Common Orchestrator Commands

### Get Plan Without Execution
```
"Create a plan for adding user notifications, but don't execute yet"
```

### Continue After Review
```
"The plan looks good, proceed with execution"
```

### Modify Plan
```
"Can you add a code review phase at the end?"
```

### Ask About Progress
```
"What phase are we on? What's the status?"
```

## Tips for Best Results

### 1. Be Specific
❌ Vague: "Make the app better"
✅ Clear: "Improve the dashboard loading performance"

### 2. Mention Constraints
```
"Build a search feature but it must use Elasticsearch and work offline"
```

### 3. Specify Security Requirements
```
"Add file upload with virus scanning and size limits"
```

### 4. Request Specific Droids (Optional)
```
"Plan this task but make sure the performance-engineer reviews it"
```

### 5. Provide Context
```
"Add a chat feature. We already have WebSocket infrastructure set up."
```

## Troubleshooting

### Issue: Orchestrator Takes Too Long
**Cause**: Task might be too complex
**Solution**: Break down into smaller tasks or let orchestrator complete current phase

### Issue: Plan Doesn't Look Right
**Cause**: Unclear request or missing context
**Solution**: Provide more details about your requirements

### Issue: Droid Fails During Execution
**Cause**: Missing dependencies or unclear instructions
**Solution**: Orchestrator will detect and attempt recovery or ask for guidance

### Issue: Integration Issues Between Droids
**Cause**: Context not properly passed
**Solution**: Orchestrator should catch this in synthesis phase

## Advanced Usage

### Nested Orchestration
```
"Build a social media app with posts, comments, and real-time feed"
```
The orchestrator will break this into sub-features and may even spawn sub-orchestrators!

### Iterative Refinement
```
Phase 1: Implement feature
Phase 2: Review
Phase 3: Fix issues from review
Phase 4: Re-review
```

### Custom Workflows
Create task patterns in `~/.factory/config/task-patterns.json` for recurring workflows.

## Real-World Examples

### Example 1: E-commerce Checkout
```
You: "Build a checkout flow with Stripe payment"

Result: 
- 2 hours with orchestrator
- 6 droids coordinated
- Complete checkout with payment processing, order confirmation, email notifications
- Security reviewed and tested
```

### Example 2: Admin Dashboard
```
You: "Create an admin dashboard with user management and analytics"

Result:
- 90 minutes with orchestrator  
- 5 droids coordinated
- Full dashboard with auth, tables, charts, and API
- Responsive and tested
```

### Example 3: API Refactoring
```
You: "Refactor the authentication API for better performance"

Result:
- 45 minutes with orchestrator
- 4 droids coordinated (backend, database, test, performance)
- Optimized API with 50% faster response times
- Backward compatible with existing clients
```

## What's Next?

### Learn More
- Read full examples: `~/.factory/docs/orchestrator-examples.md`
- Test scenarios: `~/.factory/docs/orchestrator-test-scenario.md`

### Try These Tasks
1. **Starter**: "Add a contact form to the homepage"
2. **Intermediate**: "Build a commenting system"
3. **Advanced**: "Implement real-time collaboration features"

### Customize
- Add your own task patterns
- Create custom droid coordination rules
- Adjust orchestrator behavior in `orchestrator.md`

---

**Ready to orchestrate?** Just type `@orchestrator` and describe what you want to build! 🚀

## Cheat Sheet

| Task Type | Example | Expected Droids |
|-----------|---------|----------------|
| **UI Feature** | "Add dark mode" | frontend-developer |
| **API Feature** | "Create user API" | backend-architect, backend-typescript-architect |
| **Full Feature** | "Add comments" | backend, frontend, test |
| **Security** | "Fix XSS vulnerability" | security-auditor, specialist |
| **Performance** | "Speed up queries" | performance-engineer, database-admin |
| **Bug Fix** | "Login broken" | debugger, specialist, test |
| **Complete System** | "Build chat app" | 5+ droids, all phases |

---

Happy orchestrating! 🎼 Remember: You're the conductor, the droids are your orchestra!
