resource "heroku_app" "api_gateway_app" {
  name   = "api-gateway-web"
  region = "us"
  stack  = "container"
  config_vars = {
    CORS_ORIGINS           = "*"
    DEPLOYMENT_PLATFORM    = "platform"
    PROCESS_TYPE           = "web"
    WEB_ENV                = "production"
    EMAIL_MICROSERVICE_URL = "https://email-service-web.herokuapp.com"
  }
}

resource "heroku_app" "email_service_app" {
  name   = "email-service-web"
  region = "us"
  stack  = "container"
  config_vars = {
    DB_REVISION         = "001"
    DEPLOYMENT_PLATFORM = "heroku"
    FLASK_APP           = "src.app:create_app"
    FLASK_DEBUG         = false
    FLASK_ENV           = "production"
    PROCESS_TYPE        = "web"
  }
  sensitive_config_vars = {
    DATABASE_URL  = var.EMAIL_SERVICE_DATABASE_URL
    MAIL_PASSWORD = var.EMAIL_SERVICE_MAIL_PASSWORD
    MAIL_PASSWORD = var.EMAIL_SERVICE_MAIL_USERNAME
    REDIS_TLS_URL = var.EMAIL_SERVICE_REDIS_TLS_URL
    REDIS_URL     = var.EMAIL_SERVICE_REDIS_URL
  }
}

resource "heroku_app" "user_management_service_app" {
  name   = "user-management-service-web"
  region = "us"
  stack  = "container"
  config_vars = {
    NODE_ENV         = "production"
    RESULTS_PER_PAGE = 10
  }
  sensitive_config_vars = {
    DATABASE_URI  = var.USER_MANAGEMENT_SERVICE_DATABASE_URL
    REDIS_TLS_URL = var.USER_MANAGEMENT_SERVICE_REDIS_TLS_URL
    REDIS_URL     = var.USER_MANAGEMENT_SERVICE_REDIS_URL
  }
}

resource "heroku_app" "wiki_app" {
  name   = "wiki-service-web"
  region = "us"
  stack  = "container"
  config_vars = {
    DB_TYPE   = "postgres"
    DB_SSL    = 1
    HEROKU    = 1
    PGSSLMODE = "no-verify"
  }
  sensitive_config_vars = {
    DB_HOST = var.WIKI_DATABASE_HOST
    DB_PORT = var.WIKI_DATABASE_PORT
    DB_USER = var.WIKI_DATABASE_USER
    DB_PASS = var.WIKI_DATABASE_PASSWORD
    DB_NAME = var.WIKI_DATABASE_NAME
  }
}
