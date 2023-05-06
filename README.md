# Git `file` transport

See `repro.sh`.

```sh
cd super
git submodule add ../sub
```

This results in:

> fatal: transport 'file' not allowed

This is a new limitation which seems to have come about as a result of a patch
related to security.

# Workaround

`git -c protocol.file.allow=always submodule add ../sub`

# Sources

- https://bugs.launchpad.net/ubuntu/+source/git/+bug/1993586
  - Mentions the `git -c protocol.file.allow=always submodule add …` workaround
- https://github.blog/2022-10-18-git-security-vulnerabilities-announced/#cve-2022-39253
  - GitHub blog announcing the Git CVE fixes including this one
  - Links to the source of the security advisory which I've added below
- https://github.com/git/git/security/advisories/GHSA-3wp6-j8xr-qw85
  - The security advisory
- https://git-scm.com/docs/git-config#Documentation/git-config.txt-protocolallow
  - The Git setting for `protocol.file.allow`
  - Wasn't clear to me this needs to go between `git` and `submodule`
