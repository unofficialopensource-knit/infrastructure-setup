resource "github_team_repository" "api_gateway_backend_team" {
  team_id    = github_team.backend_team.id
  repository = github_repository.api_gateway.name
  permission = "maintain"
}

resource "github_team_repository" "api_gateway_ops_team" {
  team_id    = github_team.ops_team.id
  repository = github_repository.api_gateway.name
  permission = "push"
}

resource "github_team_repository" "auth_service_backend_team" {
  team_id    = github_team.backend_team.id
  repository = github_repository.auth_service.name
  permission = "maintain"
}

resource "github_team_repository" "auth_service_ops_team" {
  team_id    = github_team.ops_team.id
  repository = github_repository.auth_service.name
  permission = "push"
}

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

resource "github_team_repository" "email_service_backend_team" {
  team_id    = github_team.backend_team.id
  repository = github_repository.email_service.name
  permission = "maintain"
}

resource "github_team_repository" "email_service_ops_team" {
  team_id    = github_team.ops_team.id
  repository = github_repository.email_service.name
  permission = "push"
}

resource "github_team_repository" "platform_setup_ops_team" {
  team_id    = github_team.ops_team.id
  repository = github_repository.platform_setup.name
  permission = "maintain"
}

resource "github_team_repository" "profile_service_backend_team" {
  team_id    = github_team.backend_team.id
  repository = github_repository.profile_service.name
  permission = "maintain"
}

resource "github_team_repository" "profile_service_ops_team" {
  team_id    = github_team.ops_team.id
  repository = github_repository.profile_service.name
  permission = "push"
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
