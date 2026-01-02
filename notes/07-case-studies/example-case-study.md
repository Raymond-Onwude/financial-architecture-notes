# Example Case Study — Architecture Under Constraint

## Context
An organization operating across multiple programs required monthly reporting to both internal leadership and external funders.

Finance data existed, but reporting cycles were slow and error-prone.

## Problem Framing
- Chart of accounts was overloaded with reporting logic
- Program tracking was inconsistent across transactions
- Reconciliations happened late, after reports were already drafted

The core issue was not staffing or effort — it was architecture.

## Architecture Decisions
- Simplified the COA to reflect statutory reporting only
- Introduced program and funder dimensions as first-class attributes
- Enforced posting rules to prevent incomplete transactions
- Defined a fixed reconciliation map tied to reporting outputs

## Implementation Notes
Changes were implemented incrementally to avoid operational disruption.
Controls were embedded into workflows rather than documented separately.

## Outcomes
- Monthly close reduced from weeks to days
- Management reporting aligned with funder reporting
- Variance explanations became routine, not investigative

## Risks & Trade-offs
- Required early discipline in transaction coding
- Initial resistance from users accustomed to flexible posting
