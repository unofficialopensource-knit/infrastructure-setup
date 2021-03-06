resource "github_team_repository" "discord_bot_ops_team" {
  team_id    = github_team.ops_team.id
  repository = github_repository.discord_bot.name
  permission = "maintain"
}

resource "github_team_repository" "discord_bot_backend_team" {
  team_id    = github_team.backend_team.id
  repository = github_repository.discord_bot.name
  permission = "push"
}

resource "github_team_repository" "gambley_backend_backend_team" {
  team_id    = github_team.backend_team.id
  repository = github_repository.gambley_backend.name
  permission = "maintain"
}

resource "github_team_repository" "gambley_backend_ops_team" {
  team_id    = github_team.ops_team.id
  repository = github_repository.gambley_backend.name
  permission = "push"
}

resource "github_team_repository" "platform_setup_ops_team" {
  team_id    = github_team.ops_team.id
  repository = github_repository.platform_setup.name
  permission = "maintain"
}
resource "github_team_repository" "web_client_frontend_team" {
  team_id    = github_team.frontend_team.id
  repository = github_repository.web_client.name
  permission = "maintain"
}

resource "github_team_repository" "web_client_ops_team" {
  team_id    = github_team.ops_team.id
  repository = github_repository.web_client.name
  permission = "push"
}

resource "github_team_repository" "wiki_ops_team" {
  team_id    = github_team.ops_team.id
  repository = github_repository.wiki.name
  permission = "maintain"
}

resource "github_team_repository" "wiki_backend_team" {
  team_id    = github_team.backend_team.id
  repository = github_repository.wiki.name
  permission = "push"
}


resource "github_team_repository" "wiki_frontend_team" {
  team_id    = github_team.frontend_team.id
  repository = github_repository.wiki.name
  permission = "push"
}
