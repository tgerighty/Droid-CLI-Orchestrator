# Factory CLI Orchestrator - Quick Reference Card

## 🚀 Getting Started

```bash
# Start Factory CLI
factory

# Select orchestrator
@orchestrator

# Check status
@orchestrator status
```

## 📋 Essential Commands

### Basic Task Execution
```bash
# Simple task
@orchestrator "Fix the login button"

# Medium task
@orchestrator "Add user profile feature"

# Complex task
@orchestrator "Build e-commerce platform"

# Plan without executing
@orchestrator plan "Your task here"
```

### Quality Gates
```bash
# Run all quality gates
@orchestrator run-quality-gates

# Run specific gate
@orchestrator run-quality-gate security_compliance
@orchestrator run-quality-gate code_quality
@orchestrator run-quality-gate test_coverage
@orchestrator run-quality-gate performance
@orchestrator run-quality-gate integration_validation

# Quality report
@orchestrator quality-report
```

### Testing & Verification
```bash
# Complete verification
@orchestrator run-verification

# Quick verification
@orchestrator run-verification --quick

# Run specific tests
@orchestrator run-tests unit
@orchestrator run-tests integration
@orchestrator run-tests security

# Test report
@orchestrator test-report
```

### Performance Monitoring
```bash
# Start monitoring
@orchestrator monitor-performance

# Performance report
@orchestrator performance-report

# Performance report for period
@orchestrator performance-report --period=24h

# Set alerts
@orchestrator set-performance-alert threshold:duration,limit:60s
```

## 🎯 Task Patterns

### Pre-defined Patterns
```bash
# Full stack feature (automatically detected)
@orchestrator "Add blog system with comments"

# Bug fix workflow
@orchestrator "Fix broken payment flow"

# Authentication system
@orchestrator "Implement OAuth login"

# Payment processing
@orchestrator "Add Stripe integration"

# API refactoring
@orchestrator "Migrate to GraphQL"

# Database optimization
@orchestrator "Optimize slow queries"

# Security audit
@orchestrator "Security review for user auth"
```

### Custom Patterns
```bash
# Create custom pattern
@orchestrator create-pattern "my-workflow"

# Use custom pattern
@orchestrator --pattern=my-workflow "Your task"

# List patterns
@orchestrator list-patterns
```

## 🔍 Analysis & Planning

```bash
# Analyze task
@orchestrator analyze "Your task"

# Estimate duration
@orchestrator estimate "Your task"

# Detect pattern
@orchestrator detect-pattern "Your task"

# Identify required droids
@orchestrator identify-droids "Your task"

# Dry run (plan only)
@orchestrator --dry-run "Your task"
```

## ⚙️ Configuration

```bash
# Show configuration
@orchestrator config show

# Set configuration value
@orchestrator config set orchestrator.max_concurrent_phases 5

# Reset configuration
@orchestrator config reset

# Show environment
@orchestrator show-environment

# Set environment
@orchestrator set-environment production
```

## 🤖 Droid Management

```bash
# List droids
@orchestrator list-droids

# Show droid details
@orchestrator show-droid frontend-developer

# Set droid timeout
@orchestrator set-droid-timeout frontend-developer 60

# Enable/disable retry
@orchestrator enable-droid-retry frontend-developer
@orchestrator disable-droid-retry security-auditor
```

## 📊 Reports

```bash
# Quality report
@orchestrator quality-report --detailed

# Performance report
@orchestrator performance-report --period=7d

# Test report
@orchestrator test-report

# Security report
@orchestrator security-report

# Coverage report
@orchestrator coverage-report
```

## 🔒 Security

```bash
# Run security gate
@orchestrator run-quality-gate security_compliance

# Security scan
@orchestrator security-scan

# Check vulnerabilities
@orchestrator check-security sql-injection
@orchestrator check-security xss
@orchestrator check-security sensitive-data

# Security report
@orchestrator security-report
```

## 🧪 Testing

```bash
# Run all tests
@orchestrator run-verification

# Unit tests
@orchestrator run-tests unit

# Integration tests
@orchestrator run-tests integration

# End-to-end tests
@orchestrator run-tests end-to-end

# Security tests
@orchestrator run-tests security

# Performance tests
@orchestrator run-tests performance

# Run scenarios
@orchestrator run-scenarios
```

## 📈 Performance

```bash
# Monitor performance
@orchestrator monitor-performance

# Performance report
@orchestrator performance-report

# Check bottlenecks
@orchestrator check-bottlenecks

# Optimize configuration
@orchestrator optimize-config

# Show performance metrics
@orchestrator show-performance-metrics
```

## 🔧 Troubleshooting

```bash
# Diagnostics
@orchestrator diagnostics

# Health check
@orchestrator health-check

# Show errors
@orchestrator show-errors

# View logs
@orchestrator logs

# Validate config
@orchestrator validate-config

# Repair issues
@orchestrator repair

# Benchmark
@orchestrator benchmark
```

## 🌥️ Cloud Integration

```bash
# Configure cloud provider
@orchestrator configure-cloud aws

# Deploy to cloud
@orchestrator deploy-cloud --provider=aws --environment=staging

# Generate Terraform
@orchestrator generate-terraform "Deploy app"

# List cloud resources
@orchestrator list-cloud-resources
```

## 🔌 Plugins

```bash
# List plugins
@orchestrator list-plugins

# Install plugin
@orchestrator install-plugin @factory-cli/ai-integration

# Uninstall plugin
@orchestrator uninstall-plugin ai-integration

# Create plugin
@orchestrator create-plugin "My Plugin"
```

## 📱 Dashboard

```bash
# Start dashboard
@orchestrator start-dashboard

# Open in browser
@orchestrator open-dashboard

# Dashboard report
@orchestrator dashboard-report
```

## 💡 Tips

### Best Practices
- ✅ Be specific in task descriptions
- ✅ Run quality gates after complex tasks
- ✅ Monitor performance regularly
- ✅ Review test results before deploying
- ✅ Use environment-specific configurations

### Common Workflows

**1. Feature Development**
```bash
@orchestrator "Add user profile with avatar"
@orchestrator run-quality-gates
@orchestrator run-verification
```

**2. Bug Fix**
```bash
@orchestrator "Fix broken login"
@orchestrator run-tests integration
@orchestrator test-report
```

**3. Security Review**
```bash
@orchestrator "Security audit for payment"
@orchestrator run-quality-gate security_compliance
@orchestrator security-report
```

**4. Performance Optimization**
```bash
@orchestrator "Optimize database queries"
@orchestrator performance-report
@orchestrator check-bottlenecks
```

### Keyboard Shortcuts

```bash
# Help
@orchestrator --help
@orchestrator <command> --help

# Examples
@orchestrator examples

# Version
@orchestrator --version

# Status
@orchestrator status
```

## 📚 Documentation References

- **Complete Guide**: `orchestrator-complete-user-guide.md`
- **Quick Start**: `orchestrator-quickstart.md`
- **Examples**: `orchestrator-examples.md`
- **Test Scenarios**: `orchestrator-test-scenario.md`
- **Configuration**: `~/.factory/orchestrator/orchestrator-config.json`

## 🆘 Getting Help

```bash
# General help
@orchestrator --help

# Command-specific help
@orchestrator run-quality-gates --help

# Show documentation
@orchestrator docs

# Show examples
@orchestrator examples

# Diagnostics
@orchestrator diagnostics
```

## 🎯 Quick Checklist

Before deploying:
- [ ] Run verification: `@orchestrator run-verification`
- [ ] Run quality gates: `@orchestrator run-quality-gates`
- [ ] Check security: `@orchestrator security-report`
- [ ] Review performance: `@orchestrator performance-report`
- [ ] Validate tests: `@orchestrator test-report`
- [ ] Check system status: `@orchestrator status`

---

**For detailed information, see the Complete User Guide: `orchestrator-complete-user-guide.md`**
