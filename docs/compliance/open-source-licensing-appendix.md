# Upryzin Productions — Identity‑Integrity Report

**Appendix: Open‑Source Licensing & Compliance**

This appendix documents the open‑source components included in the system and the associated licensing, attribution, and compliance obligations. It is structured for forensic review and redistribution readiness. Compliance claims in Section 6 are conditional on the evidence pack in Section 7 being attached and the sign‑off in Section 8 being completed.

**Scope note:** "AOSP" is a project/distribution, not a single license. This appendix covers only the AOSP components identified in Section 1 as Apache‑2.0. Other AOSP components are excluded unless separately listed with their own license and obligations. The vendored `google-cloud-sdk/` install tree is not part of this repository's distributed source and is excluded from this appendix.

## 1. Components & Licenses

**AOSP components (Apache‑2.0 subset only)** — Apache License 2.0 — Requires inclusion of the license text, inclusion of applicable NOTICE attribution notices, preservation of notices, and marking of modified files.

**Guava** — Apache License 2.0 — Same obligations as Apache License 2.0.

**JSR‑305** — BSD 3‑Clause License — Requires retention of the copyright notice, conditions, and disclaimer. No NOTICE‑file obligation is imposed by this license.

**libphonenumber** — Apache License 2.0 — Same obligations as Apache License 2.0.

Component versions, copyright holders, source locations, and artifact hashes are recorded in Section 5 and the evidence pack in Section 7.

## 2. Required Attribution & Notices

**Apache 2.0 Components (AOSP subset, Guava, libphonenumber)**

Required:
- Include a copy of the Apache License 2.0 text.
- If a NOTICE file is present, include a readable copy of the attribution notices from that NOTICE file that pertain to the derivative work, excluding notices that do not pertain.
- Preserve copyright, patent, trademark, and attribution notices from the source.
- Mark modified files with prominent notices stating that the files were changed.

**BSD 3‑Clause Component (JSR‑305)**

Required:
- Include the BSD 3‑Clause license text.
- Retain the copyright notice, conditions, and disclaimer.

## 3. Warranty & Liability

Each component is provided under its respective license, and the warranty disclaimers and liability limitations in those licenses control. The applicable license text governs; no summary statement in this appendix modifies, replaces, or extends those disclaimers.

## 4. Patent Considerations

**Apache 2.0:** Includes an express patent license from contributors, subject to termination conditions.

**BSD 3‑Clause:** Contains no express patent grant and therefore no patent termination clause. This does not mean there is no patent exposure; it means the license does not address patent rights.

## 5. Forensic Logging Requirements

For each component, Upryzin must maintain:
- Component name and version
- License type
- Copyright holder
- Source location / URL
- Artifact hash
- Modification status (Y/N) and modified‑file list
- NOTICE inclusion (Y/N) and NOTICE inventory reference
- Integration date
- Distribution form (source/binary)
- License‑scan output reference
- Reviewer sign‑off

## 6. Compliance Status Summary

**License compatibility:** Permissive licenses; compatible for combined distribution subject to attribution, license‑text, NOTICE, and modification‑marking obligations.

**Redistribution readiness:** Conditionally compliant — requires inclusion of Apache 2.0 and BSD 3‑Clause license texts, applicable NOTICE attribution notices, copyright/disclaimer retention, and modification notices for Apache components.

**Modification marking:** Required for Apache‑2.0 components; BSD 3‑Clause requires preservation of notices but does not impose the same modification‑marking requirement.

**Patent exposure:** Apache‑2.0 components include an express patent license with termination conditions; the BSD 3‑Clause component has no express patent grant.

**Forensic completeness:** Documented at summary level; evidentiary completeness depends on the attached SBOM, hashes, NOTICE inventory, modified‑file list, and distribution mapping.

## 7. Evidence Pack Checklist

Attach or reference:
- SBOM / dependency tree
- Component versions and artifact hashes
- License texts as distributed
- NOTICE inventory and copies
- Modified‑file list with modification notices
- Source/binary distribution mapping
- License‑scan output
- Reviewer sign‑off records

## 8. Sign‑Off

| Reviewer | Date | Artifact Reviewed | Status | Notes |
|---|---|---|---|---|
| | | | Approved / Conditional / Rejected | |
