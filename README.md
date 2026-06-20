# Project Horizon

Badges: `[CI]` `[Release]` `[License]`

Project Horizon is `[ONE_SENTENCE_DESCRIPTION]`.

Replace `OWNER`, `REPO`, bracketed placeholders, and sample commands before publishing.

## Status

- Lifecycle: `[experimental | active | maintenance | archived]`
- Owner: `[TEAM_OR_PERSON]`
- Primary language: `[LANGUAGE_OR_STACK]`
- Support channel: `[ISSUES | DISCUSSIONS | SLACK_CHANNEL | EMAIL]`

## Features

- `[FEATURE_ONE]`
- `[FEATURE_TWO]`
- `[FEATURE_THREE]`

## Architecture

Describe the main runtime pieces and how they communicate.

```text
[CLIENT_OR_ENTRYPOINT] -> [SERVICE_OR_LIBRARY] -> [DATA_STORE_OR_EXTERNAL_SYSTEM]
```

## Repository Layout

Keep only the directories that apply.

```text
.
|-- cmd/project-horizon/       # Go CLI or service entrypoint
|-- src/                       # Application source
|-- internal/                  # Private Go packages
|-- pkg/                       # Reusable Go packages
|-- web/                       # Frontend application
|-- infra/                     # Infrastructure as code
|-- ansible/                   # Ansible automation
|-- scripts/                   # Local and CI helper scripts
|-- docs/                      # Documentation and runbooks
`-- .github/workflows/         # CI and release workflows
```

## Requirements

- `[RUNTIME]`
- `[PACKAGE_MANAGER]`
- `[DATABASE_OR_SERVICE]`
- [mise](https://mise.jdx.dev/) for pinned local tooling
- [Lefthook](https://lefthook.dev/) for Git hooks

Install pinned tools:

```bash
mise install
```

Install Git hooks:

```bash
mise run install-hooks
```

## Quick Start

```bash
git clone https://github.com/OWNER/REPO.git
cd REPO
mise install
[INSTALL_DEPENDENCIES_COMMAND]
[RUN_PROJECT_COMMAND]
```

Open `[LOCAL_URL_OR_COMMAND_OUTPUT]` and verify `[EXPECTED_RESULT]`.

## Configuration

Document required and optional configuration values.

| Name | Required | Default | Description |
| --- | --- | --- | --- |
| `[ENV_VAR]` | yes | none | `[DESCRIPTION]` |
| `[OPTIONAL_ENV_VAR]` | no | `[DEFAULT]` | `[DESCRIPTION]` |

Create a local environment file from the sample if the project uses one:

```bash
cp .env.example .env
```

## Development

Common commands:

```bash
mise run lint
mise run check
[FORMAT_COMMAND]
[TEST_COMMAND]
[BUILD_COMMAND]
```

Language-specific examples:

```bash
go test ./...
pnpm check
terraform fmt -check -recursive
tflint --recursive
ansible-lint
```

## Quality Gates

Before opening a pull request, run the checks that apply to this project.

- Format changed files.
- Run unit and integration tests.
- Run linters for the touched stack.
- Run security checks for secrets and dependency changes.
- Update docs, examples, and screenshots when behavior changes.

## Deployment

Describe the release path for Project Horizon.

- Artifact: `[CONTAINER | BINARY | PACKAGE | STATIC_SITE | TERRAFORM_PLAN]`
- Environment: `[DEV | STAGING | PRODUCTION]`
- Trigger: `[TAG | MAIN_BRANCH | MANUAL_WORKFLOW]`
- Rollback: `[ROLLBACK_STEPS]`

## Operations

Document the minimum useful runbook.

- Logs: `[WHERE_TO_FIND_LOGS]`
- Metrics: `[DASHBOARD_LINK]`
- Alerts: `[ALERT_POLICY]`
- Backups: `[BACKUP_LOCATION_AND_RESTORE_COMMAND]`
- Known limits: `[RATE_LIMITS_OR_SCALE_LIMITS]`

## Security

- Do not commit secrets or generated state files.
- Store credentials in `[SECRET_MANAGER]`.
- Report vulnerabilities via `[SECURITY_CONTACT_OR_POLICY]`.
- Review dependency updates before merging.

## Contributing

1. Create a branch from `main`.
2. Make a focused change.
3. Run the relevant checks.
4. Open a pull request with context, test evidence, and rollout notes.

## Agent Notes

See [AGENTS.md](AGENTS.md) for repository-specific guidance for coding agents.

## License

See [LICENSE](LICENSE).
