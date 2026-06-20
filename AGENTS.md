# AGENTS.md

## Purpose

Project Horizon is a template for `[PROJECT_TYPE]` projects that solve `[PROBLEM_STATEMENT]` for `[AUDIENCE]`.

Replace bracketed placeholders before using this file in a real repository.

## Repo Shape

Keep the sections that match the project and remove the rest.

- `cmd/project-horizon`: Go CLI or service entrypoint
- `src/`: application source code
- `internal/`: private Go packages
- `pkg/`: reusable Go packages
- `web/` or `app/`: frontend application
- `infra/` or `terraform/`: infrastructure as code
- `ansible/`, `roles/`, or `playbooks/`: Ansible automation
- `scripts/`: small operational scripts
- `docs/`: project documentation and runbooks
- `.github/workflows/`: CI, release, and maintenance workflows

## Make Changes Safely

- Prefer small, focused diffs.
- Preserve the package and module boundaries already present.
- Keep imports on the configured module path, for example `<MODULE_PATH>/...`.
- Add or update tests for logic changes.
- Do not mix unrelated cleanup into feature work.
- Prefer existing helpers, commands, and project patterns over new parallel abstractions.
- Treat secrets, credentials, state files, and generated artifacts as local-only unless explicitly documented.

## Validate Before Done

Use project-native commands first. If a `Makefile`, `package.json`,
`go.mod`, or task runner exists, read it before adding new commands.

Common template checks:

```bash
mise install
mise run lint
mise run check
```

Common project-specific checks:

```bash
make fmt
make test
make lint
go test ./...
pnpm check
terraform fmt -check -recursive
tflint --recursive
ansible-lint
```

If a command fails, report the exact failure and the next likely fix path.

## Git Hooks

This repository uses Lefthook via `lefthook.yml`.

```bash
lefthook install
```

Sample hooks include:

- `pre-commit`: formatting, linting, Actions checks, Terraform checks,
  Ansible checks, and secret scanning.
- `pre-push`: broader tests and project-level checks.

## Notes For Agents

- Read `README.md`, `mise.toml`, `lefthook.yml`, and `Makefile` if present
  before changing developer workflows.
- Prefer updating existing patterns over adding new conventions.
- Flag lint, test, security, or template debt that you did not introduce.
- Keep generated files out of reviews unless they are required outputs.
