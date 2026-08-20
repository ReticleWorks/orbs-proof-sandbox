# Orb proof: ORBS-PROOF-20260820

- UTC time: `Thu Aug 20 16:57:36 UTC 2026`
- Starting commit: `d3c1ad6f1f49985c580d7c8289b6ea2173531749`
- Branch: `orbs-proof-20260820`

## Redacted identity command output

Command:

```sh
id; hostname; cat /etc/os-release | head -2; env | grep -iE "github|token|amp_" | sed "s/=.*/=<set>/"
```

Output (environment values redacted):

```text
uid=1000(user) gid=1000(user) groups=1000(user),0(root)
e2b.local
PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"
NAME="Debian GNU/Linux"
AMP_THREAD_ID=<set>
AMP_DIRECT_TERMINAL=<set>
AMP_EXECUTOR=<set>
SUDO_COMMAND=<set>
AMP_URL=<set>
AMP_DISABLE_AMP_COAUTHOR_TRAILER=<set>
AMP_API_KEY=<set>
AMP_USER_EMAIL=<set>
AMP_WORKLOAD_IDENTITY_REQUEST_TOKEN=<set>
AMP_ORB=<set>
AMP_PROJECT_ID=<set>
AMP_PORTAL_DOMAIN=<set>
AMP_BIN_DIR=<set>
AMP_ORB_WORKLOAD_SLICE=<set>
AMP_WORKSPACE_ID=<set>
AMP_WORKLOAD_IDENTITY_TOKEN=<set>
AMP_WORKING_DIRECTORY=<set>
AMP_DIRECT_DESKTOP=<set>
AMP_USER_ID=<set>
```

Non-secret environment variable names found (values were not recorded):

```text
AMP_THREAD_ID
AMP_DIRECT_TERMINAL
AMP_EXECUTOR
SUDO_COMMAND
AMP_URL
AMP_DISABLE_AMP_COAUTHOR_TRAILER
AMP_API_KEY
AMP_USER_EMAIL
AMP_WORKLOAD_IDENTITY_REQUEST_TOKEN
AMP_ORB
AMP_PROJECT_ID
AMP_PORTAL_DOMAIN
AMP_BIN_DIR
AMP_ORB_WORKLOAD_SLICE
AMP_WORKSPACE_ID
AMP_WORKLOAD_IDENTITY_TOKEN
AMP_WORKING_DIRECTORY
AMP_DIRECT_DESKTOP
AMP_USER_ID
```

Claim-name observation: no OIDC claim names or decoded claim metadata appeared in the permitted redacted output. Thread identifier metadata appears exposed by variable name through `AMP_THREAD_ID`, but its value was redacted. Workload identity token variable names were visible; token values and contents were not inspected or recorded.

## Egress probes

Each exact probe was run once with its specified five-second timeout and was not retried.

### GitHub API

Command:

```sh
curl -sS -m 5 https://api.github.com/zen
```

Exit status: `0`

Bounded output (31 bytes):

```text
Responsive is better than fast.
```

### ampcode.com

Command:

```sh
curl -sS -m 5 https://ampcode.com
```

Exit status: `0`

Full output size: 93,066 bytes. Bounded output (exact initial lines):

```text
<!doctype html>
<!-- Appearance placeholders are replaced during SSR from per-device cookies; see hooks.server.ts. -->
<html
	lang="en"
	data-amp-theme="theme-0"
	data-amp-color-scheme="system"
	data-amp-app-layout="framed"
	style=""
>
```

`<truncated after the initial lines>`

### Tailnet address

Command:

```sh
curl -sS -m 5 http://100.81.189.4:9443 || echo BLOCKED
```

Exit status: `0` for the complete shell expression (`curl` timed out and `echo BLOCKED` ran).

Bounded output (63 bytes):

```text
curl: (28) Connection timed out after 5001 milliseconds
BLOCKED
```

## Configured Git author observation

Recorded before committing without changing the configuration:

```text
name: Amp
email: amp@ampcode.com
```
