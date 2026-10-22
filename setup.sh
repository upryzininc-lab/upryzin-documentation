/docs
├── Architecture/               # System topologies, service designs, and data flows
├── Compliance/                 # SOC 2 matrices, Access Control Policies, and Change Protocols
├── SBOM/                       # Software Bill of Materials and supply chain security logs
├── Identity-Integrity-Reports/ # Telemetry verification and identity audit trails
└── Financial-Controls/         # Ledger schemas, HMAC verification specs, and dispatch records

---

### Founder

**John Marshall Curry**  
*Founder & CEO, Upryzin Productions*  
*Clovis, California*
EOF

# 4. Create UP360 Architecture Overview
echo "[4/4] Writing UP360 Architecture Overview to /docs/Architecture/OVERVIEW.md..."
cat << 'EOF' > docs/Architecture/OVERVIEW.md
# UP360 System Architecture Overview

## 1. Executive Summary

UP360 is an extended reality (XR/VR) and creator operations telemetry framework designed for workforce training, identity governance, and continuous financial auditing. The architecture emphasizes zero-trust security, immutable event streams, and evidence-based reporting across all microservices.

---

## 2. System Topology & Tier Architecture

+-----------------------+
|   Clients & Edge      |
| (XR/VR, Web, Mobile)  |
+-----------+-----------+
|
v
+-----------------------+
|     API Gateway       |
| (OAuth 2.0 / HMAC)    |
+-----------+-----------+
|
+----------------------+----------------------+
|                                             |
v                                             v
+-------------------------+                   +-------------------------+
| Identity & Telemetry    |                   | Ledger & Financial      |
| Service (Cloud Run)     |                   | Service (Cloud Run)     |
+------------+------------+                   +------------+------------+
|                                             |
v                                             v
+-------------------------+                   +-------------------------+
| Pub/Sub Telemetry Event |                   | Cloud SQL (PostgreSQL)  |
| Stream                  |                   | (Immutable Triggers)    |
+------------+------------+                   +------------+------------+
|                                             |
+----------------------+----------------------+
|
v
+-----------------------+
| Compliance & Audit    |
| Automation Pipeline   |
+-----------------------+

---

## 3. Core Component Specifications

### 3.1 Edge Layer & API Gateway
* **Protocol & Routing:** TLS 1.3 enforced. All inbound webhooks from external financial and platform partners undergo mandatory HMAC-SHA256 signature verification prior to payload extraction.
* **Authentication:** OAuth 2.0 / OIDC identity governance integrated with fine-grained RBAC and ABAC policies.

### 3.2 Compute & Execution Tier (Google Cloud Run)
* **Microservice Architecture:** Python/FastAPI containerized services running on Google Cloud Run with autoscaling execution profiles.
* **Stateless Processing:** Execution environments hold zero persistent state; all data operations route directly through authenticated, encrypted database connections.
* **Secrets Management:** Environment configuration, database tokens, and private keys strictly accessed via Google Cloud Secret Manager.

### 3.3 Financial & Ledger Service (`ledger-service`)
* **Double-Entry Accounting:** Enforces strict debit/credit parity on all state transitions before committing ledger events.
* **Idempotency Guarantees:** Every transaction requires a deterministic idempotency key, preventing duplicate operations during retries.
* **Auditability:** Implemented with immutable PL/pgSQL database triggers preventing UPDATE and DELETE operations on posted ledger records.

### 3.4 Telemetry & Event Ingestion (`Pub/Sub`)
* **Telemetry Streaming:** Session analytics, identity state changes, and system health metrics publish to asynchronous Google Cloud Pub/Sub topics.
* **Decoupled Analytics:** BigQuery sink subscriptions store time-series telemetry for long-term audit reporting and ML-based anomaly detection.

---

## 4. Compliance & Security Framework

* **SOC 2 Type II Alignment:** Continuous automated control validation via embedded verification pipelines.
* **Data Protection:** Enforced AES-256 encryption at rest across database instances and TLS 1.3 encryption in transit for all endpoints.
* **Software Supply Chain:** Automated Software Bill of Materials (SBOM) generation on every CI/CD deployment via GitHub Actions Workload Identity Federation.
EOF

echo "=== Setup Complete ==="
echo "Directory taxonomy and docs generated at ~/upryzin-workspace.”



