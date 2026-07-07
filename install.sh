#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="gzhxz-visual-story"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$REPO_DIR/.claude/skills/$SKILL_NAME"
TARGET_ROOT="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
TARGET_DIR="$TARGET_ROOT/$SKILL_NAME"

if [ ! -f "$SOURCE_DIR/SKILL.md" ]; then
  echo "Error: cannot find $SOURCE_DIR/SKILL.md"
  echo "Make sure you run this script from the cloned lokih1028/lokih1028 repository."
  exit 1
fi

mkdir -p "$TARGET_ROOT"
rm -rf "$TARGET_DIR"
cp -R "$SOURCE_DIR" "$TARGET_DIR"

if command -v zip >/dev/null 2>&1; then
  mkdir -p "$REPO_DIR/packages"
  (
    cd "$REPO_DIR/.claude/skills"
    zip -qr "$REPO_DIR/packages/$SKILL_NAME.zip" "$SKILL_NAME"
  )
  echo "Packaged: packages/$SKILL_NAME.zip"
else
  echo "Note: zip command not found, skipped local ZIP packaging."
fi

echo "Installed: $TARGET_DIR"
echo "Use in Claude Code: /$SKILL_NAME"
echo "Or prompt: 使用 gzhxz 公众号视觉叙述创作工作流 V6.8.0"