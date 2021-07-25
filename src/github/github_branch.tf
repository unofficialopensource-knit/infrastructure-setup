resource "github_branch" "discord_bot_main" {
  repository = github_repository.discord_bot.name
  branch     = "main"
}

resource "github_branch" "gambley_backend_main" {
  repository = github_repository.gambley_backend.name
  branch     = "main"
}

resource "github_branch" "gambley_backend_release" {
  repository = github_repository.gambley_backend.name
  branch     = "release"
}

resource "github_branch" "platform_setup_main" {
  repository = github_repository.platform_setup.name
  branch     = "main"
}

resource "github_branch" "web_client_main" {
  repository = github_repository.web_client.name
  branch     = "main"
}

resource "github_branch" "web_client_release" {
  repository = github_repository.web_client.name
  branch     = "release"
}

resource "github_branch" "wiki_main" {
  repository = github_repository.wiki.name
  branch     = "main"
}
