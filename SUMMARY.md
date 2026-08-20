# Orb readiness summary

## Result

The sandbox now has project-scoped `AGENTS.md`, bounded `.agents/setup`,
idempotent `.agents/resume`, and operator settings guidance. No Dockerfile or
devcontainer was added because the Amp orb documentation lists the lifecycle
hooks but does not require either container file for an orb.

## Dispatch contract

The Chitra launcher must pass these values on every dispatch. Nothing below is
embedded as a static project prompt or launcher setting in this repository:

```text
project_id = ca8b250f-45aa-4417-a1f3-4fe6224489e8
ref        = the approved immutable commit or ref for this run
prompt     = the bounded task prompt for this run
size       = the approved orb size for this run
ceiling    = the explicit cost ceiling for this run
```

The minimum-requirements page also requires a receipt, admission gate,
credential broker boundary, and usage record. This repository does not claim to
implement those Chitra controls.

## Evidence and review

- The proof record maps the Amp Project to the GitHub repository and records
  API environment resource `a1.tiny`.
- The project API record does not expose default ref, cost ceiling, concurrency,
  tool profile, secrets, changes workflow, or dispatcher access.
  `OPERATOR-SETTINGS.md` marks those fields `UNKNOWN` and names the UI area to
  review.
- The project API reports Commit Author `Amp`. The prior proof record reports
  that Amp appended the thread creator as a co-author, so the operator must
  review whether the Chitra service identity is acceptable before shipping.
- The public repository main branch was unprotected. The prior proof record
  shows a separate draft PR left open and unmerged. This readiness change must
  also remain unmerged until an operator reviews it.

Sources: [Amp orb manual](https://ampcode.com/manual/orbs), [Amp settings and
permissions](https://ampcode.com/manual), and the Crossroads page
`projects/chitra/orbs-dispatch-minimum-requirements.md`.
