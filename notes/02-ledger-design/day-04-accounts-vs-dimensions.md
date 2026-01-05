# Day 04 — Accounts vs Dimensions: The Most Expensive Confusion in Finance Systems

One of the most common — and costly — mistakes in financial system design
is using accounts to represent things that should be dimensions.

This confusion quietly breaks reporting, slows close cycles, and forces finance teams
to rebuild truth outside the ledger.

---

## What accounts are for

Accounts describe **economic meaning**.

They answer:
- What type of transaction is this?
- Is it revenue, expense, asset, liability, or equity?
- How does it behave under accounting rules?

Examples:
- Office Supplies
- Salaries
- Rent Expense
- Accounts Receivable

Accounts should be:
- stable
- limited in number
- slow to change

---

## What dimensions are for

Dimensions describe **context**.

They answer:
- Who incurred this?
- Why did it happen?
- Where did it occur?
- Which program, project, funder, or client does it belong to?

Examples:
- Department
- Program
- Location
- Project
- Funder
- Customer

Dimensions should be:
- flexible
- consistently required
- designed for slicing and reporting

---

## The failure mode

When accounts are overloaded to represent context:
- the chart of accounts explodes
- reporting becomes brittle
- new programs require new accounts
- historical comparisons break
- close cycles slow down

The ledger stops being queryable.
Truth moves into spreadsheets.

---

## Architecture principle

> Use accounts for *what* happened.  
> Use dimensions for *why, where, and for whom* it happened.

This separation keeps the ledger:
- scalable
- auditable
- explainable
- future-proof

---

## What good looks like

In a well-designed system:
- the chart of accounts is boring — and that’s a good thing
- new programs do not require new accounts
- reporting logic lives in dimensions
- management questions are answered by filters, not rework

The system adapts without structural surgery.

---

## Why this matters

Most reporting pain is not caused by volume or complexity.
It is caused by encoding the wrong meaning in the wrong place.

Correcting this early saves years of downstream cleanup.
Correcting it late is expensive.

This distinction is foundational to decision-ready finance.
