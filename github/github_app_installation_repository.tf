resource "github_app_installation_repository" "api_gateway_codecov_app" {
  installation_id = "16927671"
  repository      = github_repository.api_gateway.name
}

resource "github_app_installation_repository" "email_service_codecov_app" {
  installation_id = "16927671"
  repository      = github_repository.email_service.name
}

resource "github_app_installation_repository" "user_management_service_codecov_app" {
  installation_id = "16927671"
  repository      = github_repository.user_management_service.name
}

resource "github_app_installation_repository" "web_client_codecov_app" {
  installation_id = "16927671"
  repository      = github_repository.web_client.name
}

resource "github_app_installation_repository" "api_gateway_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.api_gateway.name
}

resource "github_app_installation_repository" "email_service_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.email_service.name
}

resource "github_app_installation_repository" "platform_setup_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.platform_setup.name
}

resource "github_app_installation_repository" "user_management_service_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.user_management_service.name
}

resource "github_app_installation_repository" "web_client_codefactor_app" {
  installation_id = "16967095"
  repository      = github_repository.web_client.name
}
