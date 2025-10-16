# Factory CLI Orchestrator - Complete User Guide

## Table of Contents
1. [System Overview](#system-overview)
2. [Getting Started](#getting-started)
3. [Core Commands](#core-commands)
4. [Task Patterns](#task-patterns)
5. [Quality Gates](#quality-gates)
6. [Testing & Verification](#testing--verification)
7. [Performance Monitoring](#performance-monitoring)
8. [Advanced Features](#advanced-features)
9. [Configuration](#configuration)
10. [Troubleshooting](#troubleshooting)

---

## System Overview

The Factory CLI Orchestrator is an intelligent coordination system that manages multiple specialized droids to accomplish complex development tasks. It combines AI-powered task delegation, real-time collaboration, automated quality validation, and comprehensive monitoring.

### Architecture
- **Orchestrator**: Master coordinator that analyzes tasks and delegates to specialized droids
- **Specialized Droids**: AI agents with specific expertise (frontend, backend, security, testing, etc.)
- **Quality Gates**: Automated validation checkpoints for security, quality, performance, and integration
- **Performance Monitor**: Real-time tracking and optimization system
- **Verification Framework**: Comprehensive testing and validation system

### Key Features
- ✅ Intelligent task analysis and delegation
- ✅ Multi-droid coordination with real-time communication
- ✅ Automated quality gates and validation
- ✅ Performance monitoring and optimization
- ✅ Comprehensive testing and verification
- ✅ Cloud integration capabilities
- ✅ Plugin architecture for extensibility

---

## Getting Started

### Prerequisites
- Factory CLI installed (`>=0.17.0`)
- Node.js (>=16.0.0)
- Git installed
- Code editor (VS Code recommended)

### Initial Setup

```bash
# 1. Start Factory CLI
factory

# 2. Select the orchestrator
@orchestrator

# 3. Check orchestrator status
@orchestrator status

# 4. View available droids
@orchestrator list-droids

# 5. Run initial verification
@orchestrator run-verification --quick
```

### Basic Usage

```bash
# Simple task delegation
@orchestrator "Fix the login button alignment issue"

# Medium complexity task
@orchestrator "Add user profile management with avatar upload"

# Complex multi-phase task
@orchestrator "Build a complete e-commerce platform with payment processing"
```

---

## Core Commands

### Task Execution Commands

#### Basic Task Execution
```bash
# Execute a simple task
@orchestrator "Add a contact form to the homepage"

# Execute with specific droid
@orchestrator --droid=frontend-developer "Update the navigation menu"

# Execute with timeout override
@orchestrator --timeout=120 "Implement user authentication"

# Execute with custom quality thresholds
@orchestrator --quality-threshold=9.0 "Add payment processing"
```

#### Advanced Task Execution
```bash
# Execute with pattern override
@orchestrator --pattern=full-stack-feature "Create blog system with comments"

# Execute with custom workflow
@orchestrator --workflow=custom "Build admin dashboard"

# Execute in debug mode
@orchestrator --debug "Fix the broken API endpoint"

# Execute with dry run (planning only)
@orchestrator --dry-run "Refactor the user management system"
```

### Planning and Analysis Commands

#### Task Planning
```bash
# Create execution plan without executing
@orchestrator plan "Build a real-time chat application"

# Get detailed task analysis
@orchestrator analyze "Migrate from REST to GraphQL"

# Estimate task duration and complexity
@orchestrator estimate "Add search functionality to product catalog"

# Identify required droids for a task
@orchestrator identify-droids "Implement OAuth integration"
```

#### Pattern Recognition
```bash
# Detect task pattern
@orchestrator detect-pattern "Create user authentication system"

# List available patterns
@orchestrator list-patterns

# Show pattern details
@orchestrator show-pattern full-stack-feature

# Use specific pattern
@orchestrator use-pattern bug-fix-workflow "Fix the broken payment flow"
```

---

## Task Patterns

### Pre-defined Patterns

#### 1. Full Stack Feature Pattern
```bash
# Use the full stack feature pattern
@orchestrator "Add user profile system with avatar upload"
# Automatically detected as full-stack-feature pattern

# Manual pattern specification
@orchestrator --pattern=full-stack-feature "Create blog system"
```

**Phases:**
1. Architecture Design (backend-architect)
2. Database Setup (database-admin)
3. Backend API (backend-typescript-architect)
4. Frontend Components (frontend-developer)
5. Testing (test-automator)
6. Security Review (security-auditor)

#### 2. Bug Fix Workflow Pattern
```bash
# Bug fix tasks automatically use this pattern
@orchestrator "Fix the broken login functionality"
@orchestrator "Resolve the payment processing error"
```

**Phases:**
1. Bug Analysis (debugger)
2. Root Cause Investigation (backend-architect/frontend-developer)
3. Fix Implementation (appropriate specialist)
4. Testing (test-automator)
5. Validation (code-reviewer)

#### 3. Authentication System Pattern
```bash
# Authentication tasks use enhanced security pattern
@orchestrator "Implement user authentication with JWT"
@orchestrator "Add OAuth login with Google"
```

**Phases:**
1. Security Architecture (security-auditor)
2. Backend Implementation (backend-architect)
3. Frontend Implementation (frontend-developer)
4. Security Testing (security-auditor)
5. Integration Testing (test-automator)
6. Security Review (security-auditor)

#### 4. Payment Processing Pattern
```bash
# Payment tasks use high-security pattern
@orchestrator "Add Stripe payment integration"
@orchestrator "Implement subscription billing system"
```

**Phases:**
1. Security Requirements (security-auditor)
2. Payment Architecture (backend-architect)
3. Secure Implementation (backend-typescript-architect)
4. Frontend Integration (frontend-developer)
5. Security Testing (security-auditor)
6. Compliance Review (security-auditor)

#### 5. API Refactoring Pattern
```bash
# API refactoring tasks
@orchestrator "Migrate REST API to GraphQL"
@orchestrator "Optimize database queries for user endpoints"
```

**Phases:**
1. Current API Analysis (backend-architect)
2. New Architecture Design (backend-architect)
3. Implementation (backend-typescript-architect)
4. Frontend Updates (frontend-developer)
5. Testing (test-automator)
6. Performance Review (performance-engineer)

#### 6. Database Optimization Pattern
```bash
# Database optimization tasks
@orchestrator "Optimize slow database queries"
@orchestrator "Add database indexes for search functionality"
```

**Phases:**
1. Database Analysis (database-admin)
2. Optimization Planning (performance-engineer)
3. Implementation (database-admin)
4. Application Updates (backend-typescript-architect)
5. Testing (test-automator)

#### 7. Security Audit Pattern
```bash
# Security audit tasks
@orchestrator "Perform security audit on user authentication"
@orchestrator "Review payment processing security"
```

**Phases:**
1. Security Analysis (security-auditor)
2. Vulnerability Scanning (security-auditor)
3. Fix Implementation (appropriate specialists)
4. Security Testing (security-auditor)
5. Compliance Review (security-auditor)

### Custom Pattern Creation

```bash
# Create a new custom pattern
@orchestrator create-pattern "microservice-api"
# Follow the interactive prompts to define phases and droids

# Save current execution as pattern
@orchestrator save-pattern "my-custom-workflow"

# Use custom pattern
@orchestrator --pattern=my-custom-workflow "Build new microservice"
```

---

## Quality Gates

### Quality Gate Commands

#### Run Quality Gates
```bash
# Run all quality gates
@orchestrator run-quality-gates

# Run specific quality gate
@orchestrator run-quality-gate security_compliance
@orchestrator run-quality-gate code_quality
@orchestrator run-quality-gate test_coverage
@orchestrator run-quality-gate performance
@orchestrator run-quality-gate integration_validation

# Run quality gates with custom thresholds
@orchestrator run-quality-gates --thresholds coverage:85,security:9.0,performance:8.0
```

#### Quality Gate Configuration
```bash
# Show current quality gate configuration
@orchestrator show-quality-gates

# Configure quality gate thresholds
@orchestrator set-quality-gate-threshold security_compliance 9.0
@orchestrator set-quality-gate-threshold test_coverage 85

# Enable/disable quality gates
@orchestrator enable-quality-gate security_compliance
@orchestrator disable-quality-gate performance

# Set quality gate to fail build on failure
@orchestrator set-quality-gate-fail-build security_compliance true
```

#### Quality Reports
```bash
# Generate quality report
@orchestrator quality-report

# Generate detailed quality report
@orchestrator quality-report --detailed

# Generate quality report for specific component
@orchestrator quality-report --component=frontend-developer

# Generate quality score
@orchestrator quality-score
```

### Quality Gate Details

#### 1. Security Compliance Gate
- **Purpose**: Validates security measures and vulnerability prevention
- **Checks**: Sensitive data exposure, SQL injection, XSS, authentication security, dependency security
- **Default Threshold**: 9.0/10.0
- **Severity**: Critical

```bash
# Run security gate specifically
@orchestrator run-quality-gate security_compliance

# Check specific security issues
@orchestrator check-security sql-injection
@orchestrator check-security xss
@orchestrator check-security sensitive-data

# Generate security report
@orchestrator security-report
```

#### 2. Code Quality Gate
- **Purpose**: Ensures code follows best practices and standards
- **Checks**: Code complexity, duplication, naming conventions, documentation coverage, style consistency
- **Default Threshold**: 7.5/10.0
- **Severity**: High

```bash
# Run code quality gate
@orchestrator run-quality-gate code_quality

# Check specific quality metrics
@orchestrator check-quality complexity
@orchestrator check-quality duplication
@orchestrator check-quality documentation

# Get quality improvement suggestions
@orchestrator quality-improvements
```

#### 3. Test Coverage Gate
- **Purpose**: Validates sufficient test coverage for code reliability
- **Checks**: Line coverage (80%+), Branch coverage (75%+), Function coverage (85%+), Statement coverage (87%+)
- **Default Threshold**: 7.5/10.0
- **Severity**: High

```bash
# Run test coverage gate
@orchestrator run-quality-gate test_coverage

# Generate coverage report
@orchestrator coverage-report

# Show uncovered files
@orchestrator show-uncovered-files

# Set coverage thresholds
@orchestrator set-coverage-threshold line 85
@orchestrator set-coverage-threshold branch 80
```

#### 4. Performance Gate
- **Purpose**: Ensures code meets performance standards
- **Checks**: Bundle size, database query performance, N+1 queries, memory usage patterns
- **Default Threshold**: 7.0/10.0
- **Severity**: Medium

```bash
# Run performance gate
@orchestrator run-quality-gate performance

# Analyze bundle size
@orchestrator analyze-bundle-size

# Check database queries
@orchestrator check-db-performance

# Generate performance report
@orchestrator performance-report
```

#### 5. Integration Validation Gate
- **Purpose**: Ensures components integrate properly
- **Checks**: API contract consistency, type consistency, database schema alignment
- **Default Threshold**: 7.5/10.0
- **Severity**: Critical

```bash
# Run integration validation gate
@orchestrator run-quality-gate integration_validation

# Check API contracts
@orchestrator check-api-contracts

# Validate database schema
@orchestrator validate-schema-alignment

# Test integration endpoints
@orchestrator test-integration
```

---

## Testing & Verification

### Verification Commands

#### Complete Verification Suite
```bash
# Run complete verification suite
@orchestrator run-verification

# Run quick verification (core tests only)
@orchestrator run-verification --quick

# Run verification with performance monitoring
@orchestrator run-verification --monitor-performance

# Run verification and generate report
@orchestrator run-verification --report
```

#### Test Categories
```bash
# Run specific test categories
@orchestrator run-tests unit
@orchestrator run-tests integration
@orchestrator run-tests end-to-end
@orchestrator run-tests performance
@orchestrator run-tests security
@orchestrator run-tests scenarios

# Run multiple test categories
@orchestrator run-tests unit integration security

# Run tests with coverage
@orchestrator run-tests --coverage
```

#### Test Scenarios
```bash
# Run all test scenarios
@orchestrator run-scenarios

# Run specific scenario
@orchestrator run-scenario user-profile-feature
@orchestrator run-scenario authentication-system
@orchestrator run-scenario e-commerce-platform

# Run stress test scenarios
@orchestrator run-scenarios --stress

# Run edge case scenarios
@orchestrator run-scenarios --edge-cases
```

### Test Results and Reports

```bash
# Show last test results
@orchestrator show-test-results

# Show test results for specific category
@orchestrator show-test-results unit

# Generate test report
@orchestrator test-report

# Generate detailed test report
@orchestrator test-report --detailed

# Export test results
@orchestrator export-test-results --format=json
@orchestrator export-test-results --format=html
```

### Continuous Testing

```bash
# Set up continuous testing
@orchestrator setup-continuous-testing

# Run tests on file changes
@orchestrator watch-tests

# Run tests before commits
@orchestrator setup-pre-commit-tests

# Configure test triggers
@orchestrator set-test-trigger on-save true
@orchestrator set-test-trigger on-commit true
```

---

## Performance Monitoring

### Monitoring Commands

#### Real-time Monitoring
```bash
# Start performance monitoring
@orchestrator monitor-performance

# Monitor specific component
@orchestrator monitor-performance --component=frontend-developer
@orchestrator monitor-performance --component=orchestrator

# Monitor with alerts
@orchestrator monitor-performance --alerts

# Monitor with custom thresholds
@orchestrator monitor-performance --thresholds duration:60s,memory:512MB
```

#### Performance Reports
```bash
# Generate performance report
@orchestrator performance-report

# Generate performance report for time period
@orchestrator performance-report --period=24h
@orchestrator performance-report --period=7d
@orchestrator performance-report --period=30d

# Generate performance report for component
@orchestrator performance-report --component=backend-architect

# Generate performance comparison
@orchestrator performance-compare --period-start=2024-01-01 --period-end=2024-01-07
```

#### Performance Alerts
```bash
# Set performance alerts
@orchestrator set-performance-alert threshold:duration,limit:120s,severity:high
@orchestrator set-performance-alert threshold:quality-score,limit:7.0,severity:medium

# List active alerts
@orchestrator list-alerts

# Acknowledge alert
@orchestrator acknowledge-alert alert_id_123

# Clear alert
@orchestrator clear-alert alert_id_123

# Test alert configuration
@orchestrator test-alerts
```

### Performance Metrics

```bash
# Show current performance metrics
@orchestrator show-performance-metrics

# Show performance trends
@orchestrator show-performance-trends

# Show component performance
@orchestrator show-component-performance frontend-developer

# Show performance benchmarks
@orchestrator show-performance-benchmarks

# Compare performance
@orchestrator compare-performance --component=orchestrator --period=7d
```

---

## Advanced Features

### Cloud Integration

#### Cloud Service Setup
```bash
# Configure cloud provider
@orchestrator configure-cloud aws
@orchestrator configure-cloud gcp
@orchestrator configure-cloud azure

# Set up cloud credentials
@orchestrator setup-cloud-credentials --provider=aws

# List cloud resources
@orchestrator list-cloud-resources

# Deploy to cloud
@orchestrator deploy-cloud --provider=aws --environment=staging
```

#### Infrastructure as Code
```bash
# Generate Terraform templates
@orchestrator generate-terraform "Deploy Node.js app with database"

# Generate CloudFormation templates
@orchestrator generate-cloudformation "Set up React app infrastructure"

# Deploy with Terraform
@orchestrator deploy-terraform --directory=./infrastructure

# Plan infrastructure changes
@orchestrator plan-infrastructure --provider=aws
```

### Plugin System

#### Plugin Management
```bash
# List available plugins
@orchestrator list-plugins

# Install plugin
@orchestrator install-plugin @factory-cli/ai-integration
@orchestrator install-plugin https://github.com/user/custom-plugin

# Uninstall plugin
@orchestrator uninstall-plugin ai-integration

# Update plugin
@orchestrator update-plugin ai-integration

# Show plugin details
@orchestrator show-plugin ai-integration
```

#### Custom Plugin Development
```bash
# Create new plugin
@orchestrator create-plugin "My Custom Droid"

# Generate plugin template
@orchestrator generate-plugin-template --type=typescript

# Test plugin locally
@orchestrator test-plugin ./my-plugin

# Publish plugin
@orchestrator publish-plugin ./my-plugin
```

### Visual Dashboard

#### Dashboard Commands
```bash
# Start visual dashboard
@orchestrator start-dashboard

# Open dashboard in browser
@orchestrator open-dashboard

# Configure dashboard
@orchestrator configure-dashboard --port=3000

# Generate dashboard report
@orchestrator dashboard-report

# Export dashboard data
@orchestrator export-dashboard-data --format=json
```

### Multi-Orchestrator Coordination

#### Multi-Orchestrator Setup
```bash
# Initialize multi-orchestrator setup
@orchestrator init-multi-orchestrator

# Add orchestrator instance
@orchestrator add-orchestrator --name=backend-orchestrator --port=3001

# List orchestrator instances
@orchestrator list-orchestrators

# Coordinate across orchestrators
@orchestrator coordinate "Deploy microservices architecture"
```

---

## Configuration

### Configuration Commands

#### View Configuration
```bash
# Show current configuration
@orchestrator config show

# Show specific configuration section
@orchestrator config show orchestrator
@orchestrator config show quality-gates
@orchestrator config show performance

# Show configuration file location
@orchestrator config show-file
```

#### Modify Configuration
```bash
# Set configuration value
@orchestrator config set orchestrator.max_concurrent_phases 5
@orchestrator config set quality-gates.security_compliance.threshold 9.0
@orchestrator config set performance.monitoring.enabled true

# Reset configuration to defaults
@orchestrator config reset

# Reset specific section
@orchestrator config reset quality-gates
```

#### Environment Configuration
```bash
# Set environment
@orchestrator set-environment development
@orchestrator set-environment staging
@orchestrator set-environment production

# Show current environment
@orchestrator show-environment

# Configure environment-specific settings
@orchestrator config set --environment=production quality-gates.security_compliance.threshold 9.5
```

### Droid Configuration

#### Droid Management
```bash
# List available droids
@orchestrator list-droids

# Show droid details
@orchestrator show-droid frontend-developer
@orchestrator show-droid security-auditor

# Configure droid timeout
@orchestrator set-droid-timeout frontend-developer 60
@orchestrator set-droid-timeout security-auditor 45

# Enable/disable droid retry
@orchestrator enable-droid-retry frontend-developer
@orchestrator disable-droid-retry security-auditor
```

#### Custom Droids
```bash
# Create custom droid
@orchestrator create-droid "My Specialist Droid"

# Register custom droid
@orchestrator register-droid ./my-droid

# Test custom droid
@orchestrator test-droid my-specialist-droid

# Unregister droid
@orchestrator unregister-droid my-specialist-droid
```

---

## Troubleshooting

### Diagnostic Commands

#### System Diagnostics
```bash
# Run system diagnostics
@orchestrator diagnostics

# Check orchestrator health
@orchestrator health-check

# Show system status
@orchestrator status

# Show detailed status
@orchestrator status --detailed

# Check dependencies
@orchestrator check-dependencies
```

#### Issue Resolution
```bash
# Show recent errors
@orchestrator show-errors

# Show error details
@orchestrator show-error error_id_123

# Clear error logs
@orchestrator clear-errors

# Validate configuration
@orchestrator validate-config

# Repair common issues
@orchestrator repair
```

### Log Management

```bash
# Show recent logs
@orchestrator logs

# Show logs for specific component
@orchestrator logs --component=orchestrator
@orchestrator logs --component=frontend-developer

# Show logs for time period
@orchestrator logs --since=1h
@orchestrator logs --since=24h

# Export logs
@orchestrator export-logs --format=json
@orchestrator export-logs --format=txt

# Clear logs
@orchestrator clear-logs
```

### Performance Issues

```bash
# Diagnose performance issues
@orchestrator diagnose-performance

# Show slow operations
@orchestrator show-slow-operations

# Optimize configuration
@orchestrator optimize-config

# Benchmark system
@orchestrator benchmark
```

### Common Issues and Solutions

#### High Memory Usage
```bash
# Check memory usage
@orchestrator check-memory

# Clear cache
@orchestrator clear-cache

# Restart orchestrator
@orchestrator restart

# Optimize memory settings
@orchestrator optimize-memory
```

#### Slow Performance
```bash
# Check performance bottlenecks
@orchestrator check-bottlenecks

# Optimize performance settings
@orchestrator optimize-performance

# Enable performance mode
@orchestrator enable-performance-mode

# Profile execution
@orchestrator profile
```

#### Quality Gate Failures
```bash
# Show quality gate failures
@orchestrator show-quality-failures

# Fix quality issues automatically
@orchestrator auto-fix-quality

# Bypass quality gate (not recommended for production)
@orchestrator bypass-quality-gate security_compliance

# Adjust quality gate thresholds
@orchestrator adjust-quality-threshold security_compliance 8.5
```

---

## Quick Reference

### Essential Commands

```bash
# Basic task execution
@orchestrator "Your task description here"

# Run verification
@orchestrator run-verification

# Run quality gates
@orchestrator run-quality-gates

# Monitor performance
@orchestrator monitor-performance

# Show system status
@orchestrator status

# View configuration
@orchestrator config show
```

### Common Workflows

#### 1. New Feature Development
```bash
@orchestrator "Add user profile management with avatar upload"
# Automatically detects pattern and runs through phases
```

#### 2. Bug Fix
```bash
@orchestrator "Fix the broken login functionality"
# Uses bug-fix workflow pattern
```

#### 3. Security Review
```bash
@orchestrator "Perform security audit on payment processing"
# Uses security audit pattern with enhanced security gates
```

#### 4. Performance Optimization
```bash
@orchestrator "Optimize slow database queries for user search"
# Uses database optimization pattern with performance monitoring
```

#### 5. Quality Assurance
```bash
@orchestrator run-quality-gates
@orchestrator run-verification
@orchestrator performance-report
```

### Help and Documentation

```bash
# Show help
@orchestrator --help

# Show command help
@orchestrator run-quality-gates --help

# Show documentation
@orchestrator docs

# Show examples
@orchestrator examples

# Show version
@orchestrator --version
```

---

## Best Practices

### 1. Task Management
- Be specific in your task descriptions
- Use patterns for common workflows
- Review execution plans before running complex tasks
- Use dry-run mode for planning

### 2. Quality Assurance
- Always run quality gates after complex tasks
- Set appropriate quality thresholds for your project
- Review quality reports regularly
- Address quality issues promptly

### 3. Performance Monitoring
- Monitor performance regularly
- Set up alerts for critical metrics
- Review performance trends weekly
- Optimize based on performance data

### 4. Testing
- Run verification before deploying
- Use test scenarios for validation
- Maintain high test coverage
- Review test results after changes

### 5. Configuration
- Review configuration regularly
- Use environment-specific settings
- Backup configuration changes
- Validate configuration after updates

---

## Support and Resources

### Documentation
- **Complete Guide**: This document
- **Quick Start**: `~/factory/docs/orchestrator-quickstart.md`
- **Examples**: `~/factory/docs/orchestrator-examples.md`
- **API Reference**: `~/factory/orchestrator/`

### Configuration Files
- **Main Config**: `~/.factory/orchestrator/orchestrator-config.json`
- **Quality Gates**: `~/.factory/orchestrator/quality-gates/`
- **Task Patterns**: `~/.factory/orchestrator/task-patterns.json`

### Logs and Reports
- **Logs**: `~/.factory/orchestrator/logs/`
- **Test Results**: `~/.factory/orchestrator/reports/tests/`
- **Quality Reports**: `~/.factory/orchestrator/reports/quality/`
- **Performance Reports**: `~/.factory/orchestrator/reports/performance/`

### Getting Help
- Run `@orchestrator --help` for command help
- Check `@orchestrator diagnostics` for system issues
- Review `@orchestrator logs` for troubleshooting
- Use `@orchestrator examples` for usage patterns

---

*This guide covers all available commands and features of the Factory CLI Orchestrator system. For the most up-to-date information, run `@orchestrator --help` or check the documentation files in your Factory installation.*
