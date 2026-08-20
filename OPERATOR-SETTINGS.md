# Amp project settings

Project: `ca8b250f-45aa-4417-a1f3-4fe6224489e8` (`leanwintermute/orbs-proof-sandbox`)

| Setting | Set to | State and operator action |
|---|---|---|
| Repository | `https://github.com/ReticleWorks/orbs-proof-sandbox` | Already set by the project API. Keep the mapped repository. |
| Default ref | `UNKNOWN`; use `main` only as a fallback | The API and docs are silent. Chitra must pass an immutable ref per dispatch. Review Project → Repository → Default ref, if shown. |
| Environment and secrets | Empty; existing project-secret inventory is UNKNOWN | Repo-side and launcher-side code need none. Do not add `AMP_API_KEY`; Chitra keeps it outside the project. Review Project → Environment/Secrets. |
| Tool profile and permissions | Minimum repo-scoped shell, Git, and `gh`; no MCP or broad/all permission | UNKNOWN in the API record. Review Project → Tools/Permissions and deny GCT, 1Password, Chitra, Slack, billing, and fleet access. |
| Orb size and cost ceiling | `a1.tiny`; explicit ceiling supplied per dispatch | `a1.tiny` is already set as the API environment resource. The ceiling is UNKNOWN. Review Project → Orb size/limits; Chitra must pass both values. |
| Commit Author | `Amp`, subject to service-identity review | Already `Amp` in the project API. Review Project → Commit Author; the proof record saw an unwanted thread-creator co-author trailer. |
| Changes Workflow | `Push to Branch`; never direct ship to `origin/main` | UNKNOWN in the API record. Review Project → Changes Workflow and choose the pull-request path. |
| Concurrency | `1` | UNKNOWN in the API record. Review Project → Limits/Concurrency and set one active dispatch. |
| Who can dispatch | Chitra dispatcher only; owner/connection is `leanwintermute` | The API identifies the owner but not a dispatcher ACL. Review Project → Access/Connections. |

The operator must review the seven `UNKNOWN` items in the Amp web UI. No repo file or captured API record can set them. Sources: [Amp orbs](https://ampcode.com/manual/orbs), [Amp projects and changes workflow](https://ampcode.com/manual#projects), [Amp permissions](https://ampcode.com/manual), and the Chitra dispatch requirements.
