# Orchestrator Usage Examples

This document demonstrates how the orchestrator coordinates specialized droids to accomplish complex tasks.

## Example 1: Simple Task - Bug Fix

**User Request**: "The login button is not working properly"

### Without Orchestrator
User manually selects `debugger` droid, runs diagnosis, then switches to appropriate specialist.

### With Orchestrator
```
🎯 Orchestrator Analysis:
- Complexity: Simple → Medium (need diagnosis first)
- Strategy: Sequential
- Droids Needed: debugger → specialist → test-automator

📋 Execution:
Phase 1: Diagnosis
  → debugger: "Investigate login button issue. Check for errors in console, network requests, event handlers, and any recent changes that might have affected the login functionality."
  
Phase 2: Fix (based on diagnosis)
  → frontend-developer: "Fix the login button issue identified in Phase 1: [specific issue]. The problem is in [file/component]."
  
Phase 3: Verification
  → test-automator: "Create test cases for login button functionality to prevent regression."
```

**Result**: Bug fixed with proper diagnosis, implementation, and tests added to prevent recurrence.

---

## Example 2: Medium Complexity - New Feature

**User Request**: "Add a commenting system to blog posts"

### Orchestrator Analysis
```yaml
Complexity: Medium
Domains: Backend (API, database), Frontend (UI), Testing
Strategy: Hybrid (sequential setup, parallel implementation, sequential review)
Estimated Phases: 5
```

### Execution Plan

#### Phase 1: Architecture & Design (Sequential)
```
Task 1: backend-architect
Prompt: "Design a commenting system for blog posts with the following requirements:
- Nested comments support (replies to comments)
- User authentication required to comment
- Basic moderation (flag inappropriate comments)
- Database schema for comments table
- RESTful API endpoints design:
  * GET /api/posts/:id/comments
  * POST /api/posts/:id/comments
  * POST /api/comments/:id/reply
  * DELETE /api/comments/:id
  * PUT /api/comments/:id/flag

Expected deliverables: API endpoint specs, database schema, data models"

Output:
✅ Created: docs/api/comments-api.md
✅ Created: src/db/schemas/comments-schema.sql
✅ Key Decision: Using parent_id for nested replies, max depth of 3 levels
```

#### Phase 2: Implementation (Parallel)
```
Task 2a: backend-typescript-architect
Prompt: "Implement the commenting API endpoints designed by backend-architect:
- Use the database schema from src/db/schemas/comments-schema.sql
- Implement middleware for authentication check
- Add validation for comment content (max length, XSS prevention)
- Implement nested comment retrieval with pagination
- Add rate limiting to prevent spam

Context: API contract defined in docs/api/comments-api.md
Files to create: src/api/comments.ts, src/services/comments-service.ts"

Output:
✅ Created: src/api/comments.ts (248 lines)
✅ Created: src/services/comments-service.ts (156 lines)
✅ Modified: src/api/index.ts (added comment routes)

Task 2b: frontend-developer (runs in parallel)
Prompt: "Create a commenting UI system for blog posts using Next.js and shadcn/ui:

Required components:
- CommentList: Display nested comments with pagination
- CommentForm: Form to submit new comments with validation
- CommentItem: Individual comment display with reply button
- CommentReply: Nested reply form

Features:
- Real-time optimistic updates
- Loading states for submissions
- Error handling
- Markdown support for comment text
- User avatars and timestamps
- Responsive design

Context: API endpoints defined in docs/api/comments-api.md
Use these endpoints: GET/POST /api/posts/:id/comments

Files to create in: src/components/comments/"

Output:
✅ Created: src/components/comments/CommentList.tsx
✅ Created: src/components/comments/CommentForm.tsx  
✅ Created: src/components/comments/CommentItem.tsx
✅ Created: src/components/comments/CommentReply.tsx
✅ Created: src/components/comments/types.ts
```

#### Phase 3: Database Migration (Sequential)
```
Task 3: database-admin
Prompt: "Create and run database migration for the comments system:
- Use the schema from src/db/schemas/comments-schema.sql
- Create appropriate indexes for query performance
- Add foreign key constraints
- Test migration rollback capability

Required indexes:
- Comments by post_id
- Comments by parent_id (for nested replies)
- Comments by user_id

Context: This supports the commenting API implemented in previous phase"

Output:
✅ Created: migrations/2024-10-07-add-comments-table.sql
✅ Executed: Migration successful on local database
✅ Tested: Rollback script verified
```

#### Phase 4: Testing (Sequential)
```
Task 4: test-automator
Prompt: "Create comprehensive tests for the commenting system:

Backend tests:
- API endpoint tests (GET, POST, DELETE, PUT)
- Nested comment retrieval logic
- Authentication requirements
- Rate limiting behavior
- Input validation

Frontend tests:
- Component rendering tests
- Form submission and validation
- Optimistic updates
- Error state handling
- Nested reply functionality

Integration tests:
- Complete comment flow from UI to database
- Nested comment creation and retrieval
- Comment deletion and moderation

Context: Backend API in src/api/comments.ts, Frontend components in src/components/comments/"

Output:
✅ Created: src/api/__tests__/comments.test.ts (87 tests)
✅ Created: src/components/comments/__tests__/CommentList.test.tsx
✅ Created: src/components/comments/__tests__/CommentForm.test.tsx
✅ All tests passing ✅
```

#### Phase 5: Code Review (Sequential)
```
Task 5: code-reviewer
Prompt: "Review the commenting system implementation for:
- Code quality and maintainability
- Security issues (XSS, SQL injection, rate limiting)
- Performance considerations
- API design consistency
- Frontend best practices

Files to review:
- src/api/comments.ts
- src/services/comments-service.ts
- src/components/comments/*.tsx
- migrations/2024-10-07-add-comments-table.sql

Focus on security and performance as this is user-generated content."

Output:
✅ Security: No major issues found
⚠️  Suggestion: Add content length validation on frontend
⚠️  Suggestion: Consider implementing comment caching for frequently viewed posts
✅ Performance: Database indexes properly configured
✅ Code Quality: Well-structured, follows project patterns
```

### Final Synthesis

```markdown
## 🎯 Task Complete: Commenting System Added

### Implementation Summary
A full-featured commenting system has been successfully implemented with:
- ✅ RESTful API with 5 endpoints
- ✅ Nested comments support (max depth: 3 levels)
- ✅ Complete frontend UI with shadcn/ui components
- ✅ Database schema with proper indexes
- ✅ Authentication and rate limiting
- ✅ Comprehensive test suite (87 tests passing)

### Files Created (15 files)
**Backend:**
- src/api/comments.ts
- src/services/comments-service.ts
- migrations/2024-10-07-add-comments-table.sql

**Frontend:**
- src/components/comments/CommentList.tsx
- src/components/comments/CommentForm.tsx
- src/components/comments/CommentItem.tsx
- src/components/comments/CommentReply.tsx
- src/components/comments/types.ts

**Tests:**
- src/api/__tests__/comments.test.ts
- src/components/comments/__tests__/*.test.tsx

**Documentation:**
- docs/api/comments-api.md

### How to Use
1. Import CommentList component in your blog post page:
   ```tsx
   import { CommentList } from '@/components/comments/CommentList'
   
   <CommentList postId={post.id} />
   ```

2. API endpoints are available at `/api/posts/:id/comments`

3. Run tests: `npm test comments`

### Next Steps
1. Consider implementing real-time updates with WebSockets
2. Add email notifications for comment replies
3. Implement admin moderation dashboard
4. Add comment search functionality
```

**Total Time**: ~30 minutes (with orchestration)
**Without Orchestrator**: Would require manual coordination, likely 45-60 minutes

---

## Example 3: Complex Task - Payment Processing System

**User Request**: "Build a complete payment processing system with Stripe"

### Orchestrator Analysis
```yaml
Complexity: Complex
Domains: Backend, Frontend, Security, Database, Testing, DevOps
Strategy: Hybrid with extensive coordination
Estimated Phases: 6
Risk Level: High (handles financial transactions)
```

### Execution Plan

#### Phase 1: Security & Architecture Planning (Sequential)
```
Task 1a: security-auditor
"Review security requirements for payment processing:
- PCI compliance requirements
- Data encryption (at rest and in transit)
- Secure token handling
- Webhook signature verification
- Rate limiting and fraud prevention
- Sensitive data handling policies"

Task 1b: backend-architect  
"Design payment processing system architecture:
- Stripe integration approach (Checkout vs Payment Intent)
- Database schema for transactions, customers, payment methods
- Webhook handling for asynchronous payment events
- Refund and dispute handling flows
- API endpoint design for payment operations
- Error handling and retry logic"
```

#### Phase 2: Core Implementation (Parallel)
```
Task 2a: payment-integration
"Implement Stripe integration with the following:
- Setup Stripe SDK and API keys management
- Create Stripe Customer on user registration
- Implement Payment Intent creation
- Handle 3D Secure authentication
- Process webhook events (payment succeeded, failed, refunded)
- Implement idempotency for payment operations"

Task 2b: database-admin
"Create database schema for payment system:
- Transactions table with Stripe IDs
- Customer payment methods storage
- Payment status tracking
- Audit log for all payment operations
- Proper indexes for transaction queries"

Task 2c: frontend-developer
"Build payment UI using Stripe Elements:
- Checkout page with Stripe payment form
- Payment method selection (saved cards)
- Payment confirmation page
- Transaction history view
- Loading states and error handling
- Mobile-responsive design"
```

#### Phase 3: Security Hardening (Sequential)
```
Task 3: security-auditor
"Implement security requirements from Phase 1:
- Add Stripe webhook signature verification
- Implement rate limiting on payment endpoints
- Add fraud detection checks
- Ensure no credit card data stored locally
- Verify PCI compliance requirements met
- Add comprehensive audit logging"
```

#### Phase 4: Testing Suite (Parallel)
```
Task 4a: test-automator
"Create comprehensive test suite:
- Unit tests for payment service
- Integration tests with Stripe test mode
- Webhook handling tests
- Payment flow end-to-end tests
- Refund process tests
- Error scenario tests (declined cards, network failures)"

Task 4b: frontend-developer
"Create Cypress E2E tests for payment flows:
- Complete checkout flow
- Saved payment method selection
- Payment failure handling
- Transaction history display"
```

#### Phase 5: Review & Optimization (Sequential)
```
Task 5a: code-reviewer
"Comprehensive security and code review:
- Focus heavily on security vulnerabilities
- Review error handling thoroughly
- Check for any PII data exposure
- Verify all Stripe best practices followed
- Performance review of payment flows"

Task 5b: performance-engineer
"Optimize payment processing:
- Database query optimization for transactions
- Frontend bundle optimization
- API response time analysis
- Webhook processing performance"
```

#### Phase 6: Deployment Preparation (Sequential)
```
Task 6: devops-specialist
"Prepare payment system for production:
- Configure Stripe webhook endpoints
- Setup environment variables securely
- Configure monitoring and alerting for payment failures
- Create runbook for payment issues
- Setup database backups for transaction data
- Configure logging for payment operations"
```

### Final Synthesis
```markdown
## 🎯 Payment Processing System Complete

### Critical Security Verification ✅
- ✅ PCI compliance requirements met
- ✅ No credit card data stored locally
- ✅ Webhook signature verification implemented
- ✅ Rate limiting on payment endpoints
- ✅ Comprehensive audit logging
- ✅ Encryption for sensitive data

### Implementation Summary
- 6 droids coordinated over 6 phases
- 23 files created/modified
- 145 tests created (all passing)
- Security audit: No critical issues
- Performance: Payment flow < 2 seconds

### Production Checklist
- [ ] Review Stripe account settings
- [ ] Configure production webhook endpoint
- [ ] Set production API keys in environment
- [ ] Enable Stripe monitoring dashboard
- [ ] Test payment flow in production mode (with test cards)
- [ ] Monitor first few real transactions closely
- [ ] Setup alerts for payment failures

### 🚨 Important Notes
1. Never store credit card numbers in your database
2. Always use Stripe's hosted payment form or Elements
3. Verify webhook signatures on every webhook
4. Log all payment operations for audit trail
5. Monitor payment success rates daily
```

**Total Time**: ~2 hours with orchestration
**Without Orchestrator**: Would require 4-6 hours with high risk of missing security requirements

---

## Comparison: With vs Without Orchestrator

| Aspect | Without Orchestrator | With Orchestrator |
|--------|---------------------|-------------------|
| **Time** | 60-120 minutes | 30-60 minutes |
| **Context Switching** | Manual, frequent | Automated |
| **Missed Steps** | Common (testing, security) | Rare (enforced in plan) |
| **Integration Issues** | Frequent | Minimal (coordinated) |
| **Quality** | Variable | Consistent |
| **Learning Curve** | Know all droids | Use orchestrator |
| **Complex Tasks** | Overwhelming | Manageable |

---

## Tips for Using the Orchestrator

### 1. Be Specific in Your Request
❌ Bad: "Build a feature"
✅ Good: "Build a user notification system with email and in-app notifications"

### 2. Trust the Orchestrator's Plan
The orchestrator will present a plan before execution. Review it and approve, or ask for adjustments.

### 3. Let It Handle Coordination
Don't micromanage droid selection. The orchestrator knows which droids work best together.

### 4. Provide Feedback Between Phases
If a phase completes but doesn't meet your needs, tell the orchestrator before continuing.

### 5. Use for Complex Tasks
For simple single-domain tasks, directly use the specialist droid. The orchestrator shines with complexity.

---

## When to Use Each Approach

### Use Orchestrator For:
- ✅ Features spanning multiple domains (frontend + backend + database)
- ✅ Tasks requiring security review
- ✅ Complex implementations needing coordination
- ✅ When you're unsure which droids to use
- ✅ Production-critical features requiring review

### Use Direct Droid For:
- ✅ Simple bug fixes in known area
- ✅ Quick styling adjustments
- ✅ Single-file modifications
- ✅ When you know exactly which specialist you need
- ✅ Time-critical simple fixes

---

## Orchestrator Command Examples

### Invoke Orchestrator
```bash
# In Factory CLI
> @orchestrator

# Then provide your task
"Build a real-time chat feature with WebSockets"
```

### Orchestrator with Constraints
```bash
"Build user authentication but we must use PostgreSQL for the database and NextAuth.js for the frontend"
```

### Orchestrator with Preferences
```bash
"Implement a blog system. I prefer MongoDB over PostgreSQL, and I want to use markdown for post content"
```

---

This orchestrator pattern transforms Factory CLI from a single-specialist tool into a coordinated team of experts working together! 🚀
