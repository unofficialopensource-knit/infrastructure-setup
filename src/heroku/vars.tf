variable "HEROKU_EMAIL" {
  type        = string
  description = "Heroku email for login"
}

variable "HEROKU_API_KEY" {
  type        = string
  description = "Heroku API key for deployment"
  sensitive   = true
}

variable "WIKI_DATABASE_HOST" {
  type        = string
  description = "Database host for Wiki"
  sensitive   = true
}

variable "WIKI_DATABASE_PORT" {
  type        = string
  description = "Database port for Wiki"
  sensitive   = true
}

variable "WIKI_DATABASE_USER" {
  type        = string
  description = "Database user for Wiki"
  sensitive   = true
}

variable "WIKI_DATABASE_PASSWORD" {
  type        = string
  description = "Database password for Wiki"
  sensitive   = true
}

variable "WIKI_DATABASE_NAME" {
  type        = string
  description = "Database name for Wiki"
  sensitive   = true
}

variable "DISCORD_WEBHOOK_URL" {
  type        = string
  description = "Webhook URL for discord"
  sensitive   = true
}

variable "TRUSTED_HOSTS" {
  type        = string
  description = "Trusted hosts for discord bot"
  sensitive   = true
}
