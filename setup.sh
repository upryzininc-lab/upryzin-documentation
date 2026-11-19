#!/usr/bin/env bash
set -euo pipefail

DOCS_DIR="docs"
mkdir -p "$DOCS_DIR/Architecture" "$DOCS_DIR/Compliance" "$DOCS_DIR/Financial-Controls" "$DOCS_DIR/Identity-Integrity-Reports" "$DOCS_DIR/SBOM"
printf '%s\n' "Upryzin documentation directories are present under $DOCS_DIR/."
