resource "github_branch_default" "discord_bot_default_branch" {
  repository = github_repository.discord_bot.name
  branch     = github_branch.discord_bot_main.branch
}

resource "github_branch_default" "gambley_backend_default_branch" {
  repository = github_repository.gambley_backend.name
  branch     = github_branch.gambley_backend_release.branch
}

resource "github_branch_default" "platform_setup_default_branch" {
  repository = github_repository.platform_setup.name
  branch     = github_branch.platform_setup_main.branch
}
resource "github_branch_default" "web_client_default_branch" {
  repository = github_repository.web_client.name
  branch     = github_branch.web_client_release.branch
}

resource "github_branch_default" "wiki_default_branch" {
  repository = github_repository.wiki.name
  branch     = github_branch.wiki_main.branch
}
