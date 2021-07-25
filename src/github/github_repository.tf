resource "github_repository" "discord_bot" {
  name                   = "discord_bot"
  description            = "Codebase for discord_bot"
  visibility             = "public"
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  is_template            = false
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = false
  delete_branch_on_merge = true
  has_downloads          = true
  auto_init              = false
  vulnerability_alerts   = true
}

resource "github_repository" "gambley_backend" {
  name                   = "gambley_backend"
  description            = "Codebase for gambley_backend"
  visibility             = "public"
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  is_template            = false
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = true
  delete_branch_on_merge = true
  has_downloads          = true
  auto_init              = false
  vulnerability_alerts   = true
}

resource "github_repository" "platform_setup" {
  name                   = "platform_setup"
  description            = "Codebase for platform_setup"
  visibility             = "public"
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  is_template            = false
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = false
  delete_branch_on_merge = true
  has_downloads          = true
  auto_init              = false
  vulnerability_alerts   = true
}

resource "github_repository" "web_client" {
  name                   = "web_client"
  description            = "Codebase for web_client"
  visibility             = "public"
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  is_template            = false
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = false
  delete_branch_on_merge = true
  has_downloads          = true
  auto_init              = false
  vulnerability_alerts   = true
}

resource "github_repository" "wiki" {
  name                   = "wiki"
  description            = "Codebase for wiki"
  visibility             = "public"
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  is_template            = false
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = false
  delete_branch_on_merge = true
  has_downloads          = true
  auto_init              = false
  vulnerability_alerts   = true
}
