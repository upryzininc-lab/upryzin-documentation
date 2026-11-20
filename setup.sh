#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

printf '%s\n' '=== Upryzin Documentation Setup ==='

for dir in \
  docs/Architecture \
  docs/Compliance \
  docs/Financial-Controls \
  docs/Identity-Integrity-Reports \
  docs/SBOM
do
  mkdir -p "$dir"
done

cat > docs/Architecture/OVERVIEW.md <<'EOF'
# UP360 System Architecture Overview

## Purpose
This document is the architecture index for UP360. Architecture claims should be updated as implementations are verified.

## Documentation Areas
- Architecture: system topology, services, and data flows
- Compliance: control mappings and compliance documentation
- Financial Controls: ledger and financial-control specifications
- Identity Integrity Reports: identity and telemetry audit records
- SBOM: software supply-chain and component inventory records

## Governance
Implementation-specific security or compliance claims should be supported by evidence before being represented as operating controls.
EOF

printf '%s\n' '[OK] Documentation taxonomy is present under ./docs.'
printf '%s\n' '[OK] Architecture overview written to docs/Architecture/OVERVIEW.md.'
