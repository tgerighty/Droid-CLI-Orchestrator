# Orchestrator Test Scenario

This document contains a test scenario to verify the orchestrator pattern is working correctly.

## Test Scenario: Add User Profile Feature

### Objective
Test the orchestrator's ability to coordinate multiple droids on a medium-complexity task.

### User Request
```
"Add a user profile feature where users can view and edit their profile information including name, bio, and avatar"
```

### Expected Orchestrator Behavior

#### 1. Task Analysis
The orchestrator should identify:
- **Complexity**: Medium
- **Domains**: Backend (API, database), Frontend (UI), Testing
- **Strategy**: Hybrid (sequential architecture, parallel implementation)
- **Droids Needed**: 4-5 droids

#### 2. Execution Plan
The orchestrator should create a plan similar to:

```yaml
Phase 1: Architecture (Sequential)
  - backend-architect: Design profile API and database schema
  
Phase 2: Implementation (Parallel)
  - backend-typescript-architect: Implement profile endpoints
  - frontend-developer: Build profile UI components
  - database-admin: Create migration scripts (if needed)
  
Phase 3: Testing (Sequential)
  - test-automator: Create test suite
  
Phase 4: Review (Sequential)
  - code-reviewer: Quality and security review
```

#### 3. Task Tool Invocations
The orchestrator should invoke the Task tool multiple times, once per droid, with:
- Clear `subagent_type` matching droid names
- Concise `description` summarizing the sub-task
- Detailed `prompt` with context from previous phases

### Expected Outputs

#### Files That Should Be Created
```
Backend:
- src/api/profile.ts (or similar)
- src/services/profile-service.ts
- migrations/YYYY-MM-DD-add-profile-fields.sql

Frontend:
- src/components/profile/ProfileView.tsx
- src/components/profile/ProfileEdit.tsx
- src/pages/profile/[userId].tsx (or app/profile/[userId]/page.tsx)

Tests:
- src/api/__tests__/profile.test.ts
- src/components/profile/__tests__/ProfileView.test.tsx

Documentation:
- docs/api/profile-api.md (or inline in code)
```

#### Final Synthesis
The orchestrator should provide:
- Summary of what was accomplished
- List of files created/modified
- How to test the new feature
- Next steps or recommendations

### Success Criteria

✅ **Pass Criteria:**
1. Orchestrator correctly identifies this as a medium-complexity task
2. Creates a logical execution plan with proper phase ordering
3. Delegates to appropriate droids (backend, frontend, testing)
4. Each Task invocation includes sufficient context
5. Synthesizes results into a coherent summary
6. No critical integration issues between droid outputs

❌ **Fail Criteria:**
1. Orchestrator tries to implement code itself instead of delegating
2. Wrong droids selected for the task domains
3. Missing critical phases (e.g., no testing phase)
4. Insufficient context passed between phases
5. Integration conflicts in final result

### How to Run This Test

#### Option 1: Manual Test with Factory CLI
```bash
# 1. Start Factory CLI
factory

# 2. Select orchestrator droid
@orchestrator

# 3. Provide the test request
"Add a user profile feature where users can view and edit their profile information including name, bio, and avatar"

# 4. Observe orchestrator behavior:
# - Does it create a logical plan?
# - Does it delegate to appropriate droids?
# - Does it synthesize results properly?
```

#### Option 2: Simulated Test (Review Plan Only)
```bash
# Ask orchestrator to plan without executing
"Create an execution plan for adding a user profile feature, but don't execute yet. Just show me the plan."
```

### Evaluation Checklist

After running the test, check:

- [ ] **Task Analysis Correct**: Identified as medium complexity
- [ ] **Plan Logical**: Phases in correct order with dependencies
- [ ] **Droid Selection Appropriate**: Right specialists for each sub-task
- [ ] **Context Passing**: Each phase has info from previous phases
- [ ] **Parallel Execution**: Independent tasks run in parallel (if possible)
- [ ] **Error Handling**: Graceful handling if a droid phase fails
- [ ] **Final Synthesis**: Clear summary of deliverables
- [ ] **Integration Verification**: Checked that components work together
- [ ] **Quality Assurance**: Included testing and review phases

### Expected Timeline
- Without orchestrator: 45-60 minutes (manual coordination)
- With orchestrator: 25-35 minutes (automated coordination)

### Known Limitations to Test For

1. **Context Loss**: Does context get lost between phases?
2. **Integration Gaps**: Do frontend and backend APIs align?
3. **Missing Review**: Does it skip security/code review?
4. **Over-Engineering**: Does it create unnecessary complexity?
5. **Under-Engineering**: Does it skip important steps like testing?

### Extension Tests

After basic test passes, try these variations:

#### Test 2: Simple Task (Should NOT Use Multiple Droids)
```
"Fix the typo in the homepage title"
```
Expected: Orchestrator should delegate directly to frontend-developer without complex coordination.

#### Test 3: Complex Task (Should Use 5+ Droids)
```
"Build a complete blog system with posts, comments, categories, and search"
```
Expected: Orchestrator should create elaborate plan with many phases and droids.

#### Test 4: Ambiguous Task (Should Ask Questions)
```
"Make the app better"
```
Expected: Orchestrator should ask clarifying questions before creating plan.

#### Test 5: Security-Critical Task (Should Emphasize Security)
```
"Add OAuth login with Google"
```
Expected: Orchestrator should heavily involve security-auditor droid.

---

## Test Results Template

Fill this out after running tests:

### Test Run: [Date]

**Test Case**: User Profile Feature

**Result**: ✅ Pass / ❌ Fail / ⚠️ Partial Pass

**Observations**:
- Task Analysis:
- Execution Plan Quality:
- Droid Selection:
- Context Passing:
- Final Output Quality:

**Issues Found**:
1. 
2. 
3. 

**Improvements Needed**:
1. 
2. 
3. 

**Overall Assessment**:
[Your assessment of orchestrator performance]

---

## Troubleshooting

### If Orchestrator Doesn't Delegate
**Symptom**: Orchestrator tries to write code itself
**Fix**: Enhance the orchestrator.md prompt to emphasize "You never write code directly - you always delegate to specialist droids"

### If Context Gets Lost
**Symptom**: Later phases don't reference earlier work
**Fix**: Emphasize context passing in prompts to each droid

### If Wrong Droids Selected
**Symptom**: Frontend droid asked to do backend work
**Fix**: Review droid descriptions in orchestrator.md for accuracy

### If No Synthesis Happens
**Symptom**: Orchestrator doesn't combine results
**Fix**: Enhance the "Result Synthesis" section in orchestrator.md

---

This test scenario validates that the orchestrator pattern successfully coordinates multiple droids to accomplish complex tasks! 🧪
