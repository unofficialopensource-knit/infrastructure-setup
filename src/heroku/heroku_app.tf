resource "heroku_app" "discord_bot_app" {
  name   = "discord-bot-web"
  region = "us"
  stack  = "container"
  config_vars = {
    PYTHONUNBUFFERED = 1
    WEB_ENV          = "production"
  }
  sensitive_config_vars = {
    DISCORD_WEBHOOK_URL = var.DISCORD_WEBHOOK_URL
    TRUSTED_HOSTS       = var.TRUSTED_HOSTS
  }
}

resource "heroku_app" "gambley_backend_app" {
  name   = "gambley-backend-web"
  region = "us"
  stack  = "container"
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
