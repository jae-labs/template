# TFLint configuration for Project Horizon.
# https://github.com/terraform-linters/tflint/blob/master/docs/user-guide/config.md

config {
  force               = false
  disabled_by_default = false
}

plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

# Prefer fixing unused declarations. If a module needs a temporary exception,
# add the rule override here with the reason in the pull request.
# rule "terraform_unused_declarations" {
#   enabled = false
# }
