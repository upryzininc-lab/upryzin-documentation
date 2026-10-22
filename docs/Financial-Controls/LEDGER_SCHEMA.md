# UP360™ Financial Controls & Ledger Schema
**UPRYZIN PRODUCTIONS**

---

## 1. Overview
The **UP360™** financial telemetry engine implements a strict double-entry accounting model backed by SQLite. To maintain compliance, financial records are enforced as append-only via native database triggers.

---

## 2. Chart of Accounts Mapping

| Account Code | Account Name | Type | Identifier Reference | Description |
| :--- | :--- | :--- | :--- | :--- |
| **1010** | Current Bank Account | ASSET | `9087` | Primary checking account root balance. |
| **1020** | Virtual Card Clearing | ASSET | `7102` | Virtual Visa/Debit card clearing & routing. |
| **1030** | Virtual Card Clearing | ASSET | `5561` | Secondary virtual card routing. |
| **2010** | Accounts Payable | LIABILITY | `VENDOR` | External vendor obligations & clearing. |
| **5010** | Software & Infrastructure | EXPENSE | `TECH` | Cloud infrastructure, API subscriptions, and tooling (GCP, Adobe, Microsoft). |

---

## 3. Double-Entry Flow Rules
* **Card Expenses (Debits):** Debits `5010` (Expense) and credits the respective card/bank clearing account (`1010`, `1020`, or `1030`).
* **Deposits & Inbound Credits:** Debits the asset account and credits `2010` or revenue accounts, maintaining strict balance ($\sum 	ext{debits} = \sum 	ext{credits}$).
