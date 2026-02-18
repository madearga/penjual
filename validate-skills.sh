#!/bin/bash
# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

SKILLS_DIR="skills"
ISSUES=0
WARNINGS=0
PASSED=0

echo "🔍 Auditing Skills Against Agent Skills Specification"
echo "======================================================"
echo ""
echo "Reference: https://agentskills.io/specification.md"
echo ""

for skill_dir in "$SKILLS_DIR"/*/; do
  skill_name=$(basename "$skill_dir")
  skill_file="$skill_dir/SKILL.md"
  skill_errors=()
  skill_warnings=()

  if [[ ! -f "$skill_file" ]]; then
    echo -e "${RED}❌ $skill_name${NC}"
    echo " Missing SKILL.md"
    ((ISSUES++))
    continue
  fi

  frontmatter=$(sed -n '/^---$/,/^---$/p' "$skill_file" | head -n -1 | tail -n +2)

  if [[ -z "$frontmatter" ]]; then
    echo -e "${RED}❌ $skill_name${NC}"
    echo " Missing YAML frontmatter (---)"
    ((ISSUES++))
    continue
  fi

  name_in_file=$(echo "$frontmatter" | grep "^name:" | sed 's/^name: //' | tr -d ' ')

  if [[ -z "$name_in_file" ]]; then
    skill_errors+=("Missing 'name' field in frontmatter")
  elif [[ "$name_in_file" != "$skill_name" ]]; then
    skill_errors+=("Name mismatch: directory='$skill_name' but frontmatter='$name_in_file'")
  fi

  description=$(echo "$frontmatter" | grep "^description:" | head -1 | sed 's/^description: //' | tr -d '"')

  if [[ -z "$description" ]]; then
    skill_errors+=("Missing 'description' field in frontmatter")
  fi

  if [[ ${#skill_errors[@]} -gt 0 ]]; then
    echo -e "${RED}❌ $skill_name${NC}"
    for error in "${skill_errors[@]}"; do
      echo -e " ${RED}Error:${NC} $error"
    done
    ((ISSUES++))
  else
    echo -e "${GREEN}✓ $skill_name${NC}"
    ((PASSED++))
  fi
done

echo ""
echo "======================================================"
echo "Summary:"
echo -e " ${GREEN}✓ Passed: $PASSED${NC}"
if [[ $WARNINGS -gt 0 ]]; then
  echo -e " ${YELLOW}⚠️ Warnings: $WARNINGS${NC}"
fi
if [[ $ISSUES -gt 0 ]]; then
  echo -e " ${RED}❌ Issues: $ISSUES${NC}"
fi
echo ""

if [[ $ISSUES -eq 0 ]]; then
  echo -e "${GREEN}All skills are valid! ✓${NC}"
  exit 0
else
  echo -e "${RED}Found $ISSUES issue(s) that need fixing.${NC}"
  exit 1
fi
