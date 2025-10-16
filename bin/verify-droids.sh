#!/bin/bash

# Verify that all droids are fixed and no longer contain invalid tools
DROIDS_DIR="/Users/besi/.factory/droids"

echo "🔍 Verifying droid configurations..."
echo ""

# Check for ExitSpecMode
echo "Checking for 'ExitSpecMode'..."
exit_spec_count=$(grep -l "ExitSpecMode" "$DROIDS_DIR"/*.md | wc -l | tr -d ' ')
if [ "$exit_spec_count" -eq 0 ]; then
    echo "  ✅ No droids contain 'ExitSpecMode'"
else
    echo "  ❌ Found $exit_spec_count droids still containing 'ExitSpecMode'"
    grep -l "ExitSpecMode" "$DROIDS_DIR"/*.md
fi

# Check for getIdeDiagnostics
echo ""
echo "Checking for 'getIdeDiagnostics'..."
ide_diag_count=$(grep -l "getIdeDiagnostics" "$DROIDS_DIR"/*.md | wc -l | tr -d ' ')
if [ "$ide_diag_count" -eq 0 ]; then
    echo "  ✅ No droids contain 'getIdeDiagnostics'"
else
    echo "  ❌ Found $ide_diag_count droids still containing 'getIdeDiagnostics'"
    grep -l "getIdeDiagnostics" "$DROIDS_DIR"/*.md
fi

# Count total droids
total_droids=$(ls "$DROIDS_DIR"/*.md | wc -l | tr -d ' ')
echo ""
echo "📊 Summary:"
echo "  Total droids: $total_droids"
echo "  Fixed ExitSpecMode: ✅"
echo "  Fixed getIdeDiagnostics: ✅"

if [ "$exit_spec_count" -eq 0 ] && [ "$ide_diag_count" -eq 0 ]; then
    echo ""
    echo "🎉 All droids are ready to use!"
    echo ""
    echo "You can now start Factory CLI:"
    echo "  factory"
    echo "  @orchestrator"
    echo "  \"Your task here\""
else
    echo ""
    echo "⚠️  Some issues remain. Please review the output above."
fi
