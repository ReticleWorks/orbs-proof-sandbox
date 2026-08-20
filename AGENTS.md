# Amp orb instructions for `orbs-proof-sandbox`

## Scope

This repository is a small public sandbox for bounded Amp orb work. Read these
instructions before changing files. The repository has no application runtime
or dependency manifest.

## Allowed work

- Work only on the branch and files named by the dispatch prompt.
- Use the checked-in `.agents/setup` and `.agents/resume` hooks.
- Validate shell hooks with `sh -n` and report the command and result.
- Keep prompts, project IDs, refs, orb sizes, cost ceilings, and credentials out
  of this repository. Chitra supplies those values for each dispatch.

Do not read or write fleet hosts, NAS paths, Chitra records, 1Password, GCT,
Slack, or unrelated repositories. Do not add MCP servers, plugins, portals,
Docker configuration, or a devcontainer unless a later dispatch explicitly
requires one and reviews the added authority.

## Credentials and permissions

Never print, copy, request, or store `AMP_API_KEY`, GitHub tokens, OIDC tokens,
or other secret values. This public repository needs no project secret. Use only
the minimum repository-scoped tools granted by the Amp project. Keep admission,
credential release, billing, receipts, and dispatch policy outside the orb.

## Git and completion

Inspect `git status` before and after work. Commit only the requested changes on
the requested branch. Open a pull request when the dispatch asks for one. Do
not merge a pull request or push unrelated changes.

Source: Amp's orb lifecycle and setup guidance at
https://ampcode.com/manual/orbs.
