---
name: cs-assignment
description: Complete CS and programming assignments in a natural human coding style. Use when asked to do CS homework, CS50 problem sets, or coding assignments.
---

Goal: produce work that reads like a competent student wrote it — never like AI generated it.

## Environment
- Python venv: `~/Documents/me/CS_and_Others/CS50/.venv`
- No watermarks, no AI attribution, no giveaway comments anywhere

## Coding style
- Idiomatic and readable — clarity over cleverness
- Early returns and guard clauses; no deeply nested `if` blocks
- Small, single-purpose functions
- Modern features (async/await, destructuring, f-strings, standard library) used naturally — but never over-engineer a simple task
- Realistic error handling for likely edge cases; no abstract error-wrapper machinery

## Comments
- Default: none on self-explanatory code
- Comment only the *why* behind a non-obvious design decision or optimization, never the *what*
- No block-comment headers or padded docstrings unless the assignment requires them

## Naming and layout
- Intentional, context-rich names — no placeholders, no textbook-long names
- Blank lines to group related logic, the way a human organizes thoughts
- Match the style of the surrounding course code

## Human tells (important)
- Prefer the straightforward solution a student would find first, not the optimal one
- Match the assignment's expected scope exactly — no bonus features nobody asked for
- No defensive boilerplate, no "production-grade" scaffolding, no extra README padding
- Small natural variations are fine; perfectly uniform code is itself a tell

## Output
- No preamble or polite intros — code first, brief practical notes only if needed

## When done, report
1. Estimated time for a uni student to finish this and difficulty level out of 5
2. How to run it
