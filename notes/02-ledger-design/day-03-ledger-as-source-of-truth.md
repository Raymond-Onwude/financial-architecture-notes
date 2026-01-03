# Day 03 — The Ledger as the Source of Truth

A finance system is only as reliable as its ledger.

Dashboards, reports, forecasts, and KPIs all depend on one assumption:
that the general ledger reflects reality consistently, completely, and without interpretation.

When organizations argue about numbers, the root cause is rarely effort or tooling.
It is almost always a ledger design problem.

---

## What “source of truth” actually means

A ledger is a source of truth when:
- every transaction has a clear economic meaning
- posting rules are consistent and enforced
- reconciliation is predictable and repeatable
- reports do not require manual reclassification

If truth must be reconstructed outside the ledger, the ledger has failed.

---

## Common failure patterns

Most broken ledgers fail in one of these ways:

1) **Overloaded charts of accounts**  
   Accounts are used to represent programs, locations, clients, and reporting needs simultaneously.

2) **Missing or inconsistent dimensions**  
   Transactions post without the attributes required for management or funder reporting.

3) **Post-first, explain-later workflows**  
   Entries are allowed without validation, relying on month-end cleanup to restore order.

4) **Subledger leakage**  
   AR, AP, payroll, or inventory do not reconcile cleanly to the general ledger.

These failures compound over time, increasing reporting latency and eroding trust.

---

## Architecture principle

> The ledger should encode truth once — at the moment of posting — not reconstruct it later.

This requires deliberate design:
- a restrained chart of accounts
- clearly defined dimensions
- strict posting rules
- a known reconciliation map

---

## What good looks like

In a well-designed ledger:
- Management questions are answered by queries, not spreadsheets
- Budget vs actual works across departments and programs
- Month-end close becomes routine
- Variance discussions focus on decisions, not data quality

The ledger stops being an accounting artifact and becomes an operational asset.

---

## What comes next

The next step is understanding **when to use accounts** and **when to use dimensions** — and why confusing the two is one of the most expensive design mistakes organizations make.

That distinction is the foundation of scalable financial architecture.
