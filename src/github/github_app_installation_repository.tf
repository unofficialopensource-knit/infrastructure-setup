resource "github_app_installation_repository" "api_gateway_codecov_app" {
  installation_id = "16927671"
  repository      = github_repository.api_gateway.name
}

resource "github_app_installation_repository" "auth_service_codecov_app" {
  installation_id = "16927671"
  repository      = github_repository.auth_service.name
}

resource "github_app_installation_repository" "discord_bot_codecov_app" {
  installation_id = "16927671"
  repository      = github_repository.discord_bot.name
}

resource "github_app_installation_repository" "email_service_codecov_app" {
  installation_id = "16927671"
  repository      = github_repository.email_service.name
}

resource "github_app_installation_repository" "gambley_backend_codecov_app" {
  installation_id = "16927671"
  repository      = github_repository.gambley_backend.name
}

resource "github_app_installation_repository" "profile_service_codecov_app" {
  installation_id = "16927671"
  repository      = github_repository.profile_service.name
}

resource "github_app_installation_repository" "web_client_codecov_app" {
  installation_id = "16927671"
  repository      = github_repository.web_client.name
}

resource "github_app_installation_repository" "api_gateway_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.api_gateway.name
}

resource "github_app_installation_repository" "auth_service_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.auth_service.name
}

resource "github_app_installation_repository" "discord_bot_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.discord_bot.name
}

resource "github_app_installation_repository" "email_service_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.email_service.name
}

resource "github_app_installation_repository" "gambley_backend_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.gambley_backend.name
}

resource "github_app_installation_repository" "platform_setup_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.platform_setup.name
}

resource "github_app_installation_repository" "profile_service_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.profile_service.name
}

resource "github_app_installation_repository" "web_client_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.web_client.name
}

resource "github_app_installation_repository" "api_gateway_deepsource_app" {
  installation_id = "16888192"
  repository      = github_repository.api_gateway.name
}

resource "github_app_installation_repository" "auth_service_deepsource_app" {
  installation_id = "16888192"
  repository      = github_repository.auth_service.name
}

resource "github_app_installation_repository" "discord_bot_deepsource_app" {
  installation_id = "16888192"
  repository      = github_repository.discord_bot.name
}

resource "github_app_installation_repository" "email_service_deepsource_app" {
  installation_id = "16888192"
  repository      = github_repository.email_service.name
}

resource "github_app_installation_repository" "gambley_backend_deepsource_app" {
  installation_id = "16888192"
  repository      = github_repository.gambley_backend.name
}

resource "github_app_installation_repository" "platform_setup_deepsource_app" {
  installation_id = "16888192"
  repository      = github_repository.platform_setup.name
}

resource "github_app_installation_repository" "profile_service_deepsource_app" {
  installation_id = "16888192"
  repository      = github_repository.profile_service.name
}

resource "github_app_installation_repository" "web_client_deepsource_app" {
  installation_id = "16888192"
  repository      = github_repository.web_client.name
}

resource "github_app_installation_repository" "wiki_deepsource_app" {
  installation_id = "16888192"
  repository      = github_repository.wiki.name
}
