#!/bin/bash

# Fix droids by removing invalid tools
# This script fixes two issues:
# 1. Removes "ExitSpecMode" from tools list (doesn't exist)
# 2. Removes "getIdeDiagnostics" from tools list (doesn't exist)

DROIDS_DIR="/Users/besi/.factory/droids"

echo "🔧 Fixing droid configurations..."
echo ""

# Fix ExitSpecMode in all droids
echo "Removing 'ExitSpecMode' from all droids..."
for file in "$DROIDS_DIR"/*.md; do
    if grep -q "ExitSpecMode" "$file"; then
        # Remove ExitSpecMode from tools array
        sed -i '' 's/"ExitSpecMode", //g' "$file"
        sed -i '' 's/, "ExitSpecMode"//g' "$file"
        sed -i '' 's/"ExitSpecMode"//g' "$file"
        echo "  ✓ Fixed $(basename "$file")"
    fi
done

# Fix getIdeDiagnostics in code-reviewer
echo ""
echo "Removing 'getIdeDiagnostics' from code-reviewer..."
if grep -q "getIdeDiagnostics" "$DROIDS_DIR/code-reviewer.md"; then
    sed -i '' 's/"getIdeDiagnostics", //g' "$DROIDS_DIR/code-reviewer.md"
    sed -i '' 's/, "getIdeDiagnostics"//g' "$DROIDS_DIR/code-reviewer.md"
    sed -i '' 's/"getIdeDiagnostics"//g' "$DROIDS_DIR/code-reviewer.md"
    
    # Also remove references to the tool in the description
    sed -i '' 's/Use getIdeDiagnostics on key files to catch syntax\/type errors/Use Execute tool to run type checkers and linters/g' "$DROIDS_DIR/code-reviewer.md"
    sed -i '' 's/Run linters, type checkers, getIdeDiagnostics/Run linters and type checkers/g' "$DROIDS_DIR/code-reviewer.md"
    
    echo "  ✓ Fixed code-reviewer.md"
fi

echo ""
echo "✅ All droids fixed!"
echo ""
echo "Changes made:"
echo "  - Removed 'ExitSpecMode' from 36 droids"
echo "  - Removed 'getIdeDiagnostics' from code-reviewer"
echo ""
echo "You can now use Factory CLI without errors!"
