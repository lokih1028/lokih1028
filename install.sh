#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="gzhxz-visual-story"
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CANONICAL_SOURCE_DIR="$REPO_DIR/skills/$SKILL_NAME"
LEGACY_SOURCE_DIR="$REPO_DIR/.claude/skills/$SKILL_NAME"
TARGET_ROOT="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
TARGET_DIR="$TARGET_ROOT/$SKILL_NAME"
PACKAGE_ONLY="false"

for arg in "$@"; do
  case "$arg" in
    --package-only)
      PACKAGE_ONLY="true"
      ;;
    -h|--help)
      echo "Usage: bash install.sh [--package-only]"
      echo "Installs $SKILL_NAME to ~/.claude/skills and generates packages/$SKILL_NAME.zip when zip is available."
      exit 0
      ;;
    *)
      echo "Unknown option: $arg"
      exit 1
      ;;
  esac
done

if [ -f "$CANONICAL_SOURCE_DIR/SKILL.md" ]; then
  SOURCE_DIR="$CANONICAL_SOURCE_DIR"
elif [ -f "$LEGACY_SOURCE_DIR/SKILL.md" ]; then
  SOURCE_DIR="$LEGACY_SOURCE_DIR"
else
  echo "Error: cannot find $SKILL_NAME/SKILL.md"
  echo "Expected one of:"
  echo "  $CANONICAL_SOURCE_DIR/SKILL.md"
  echo "  $LEGACY_SOURCE_DIR/SKILL.md"
  exit 1
fi

mkdir -p "$REPO_DIR/packages"

if command -v zip >/dev/null 2>&1; then
  TMP_DIR="$(mktemp -d)"
  trap 'rm -rf "$TMP_DIR"' EXIT
  cp -R "$SOURCE_DIR" "$TMP_DIR/$SKILL_NAME"
  (
    cd "$TMP_DIR"
    zip -qr "$REPO_DIR/packages/$SKILL_NAME.zip" "$SKILL_NAME"
  )
  echo "Packaged: packages/$SKILL_NAME.zip"
else
  echo "Note: zip command not found, skipped local ZIP packaging."
fi

if [ "$PACKAGE_ONLY" = "true" ]; then
  exit 0
fi

mkdir -p "$TARGET_ROOT"
rm -rf "$TARGET_DIR"
cp -R "$SOURCE_DIR" "$TARGET_DIR"

echo "Installed: $TARGET_DIR"
echo "Use in Claude Code: /$SKILL_NAME"
echo "Marketplace install: npx skills add lokih1028/lokih1028"
echo "Or prompt: 使用 gzhxz 公众号视觉叙述创作工作流 V6.8.0"
