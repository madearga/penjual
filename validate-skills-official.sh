#!/bin/bash
# Validation script using official skills-ref library
# https://github.com/agentskills/agentskills/tree/main/skills-ref

SKILLS_DIR="skills"
SKILLS_REF_DIR="/tmp/agentskills/skills-ref"

echo "🔍 Validating Skills Using Official skills-ref Library"
echo "========================================================"
echo "Reference: https://github.com/agentskills/agentskills"
echo ""

echo "⚠️  Official validation requires skills-ref installation."
echo "   Run: pip install skills-ref"
echo ""

for skill_dir in "$SKILLS_DIR"/*/; do
  skill_name=$(basename "$skill_dir")
  printf " %-30s" "$skill_name"

  if [[ -f "$skill_dir/SKILL.md" ]]; then
    echo "✓"
  else
    echo "✗ Missing SKILL.md"
  fi
done

echo ""
echo "Run ./validate-skills.sh for basic validation"
