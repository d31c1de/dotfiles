---
name: guardrail-handoff
description: Handle blocked or rejected tool calls caused by opencode permission rules and guardrails. Use when an edit, write, or command is denied, rejected, or prevented by permission rules (e.g. .obsidian/** deny) — hand the step to the user instead of bypassing the guardrail.
---

When a tool call is denied or rejected by a permission rule (for example an `edit` deny on `.obsidian/**`), do NOT work around it with bash, python, sed, or any other tool — unless the user explicitly asks for a workaround. Guardrails exist to protect plugin and app configuration from silent agent changes.

Instead, hand the step to the user:

1. State exactly what was blocked and why (which rule blocked it).
2. Give the user the precise manual action, preferring the app UI over raw file edits:
   - Obsidian settings → name the exact Settings path (e.g. "Settings → Files & Links → Default location for new attachments").
   - Config files → give the file path, the exact key/line, and the value to set.
3. Mention any app restart needed for the change to take effect.
4. After the user confirms, verify the result with read-only commands only.

Never silently retry the blocked operation with a different tool.
