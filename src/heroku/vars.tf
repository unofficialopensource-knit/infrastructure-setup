variable "HEROKU_EMAIL" {
  type        = string
  description = "Heroku email for login"
}

variable "HEROKU_API_KEY" {
  type        = string
  description = "Heroku API key for deployment"
  sensitive   = true
}

variable "EMAIL_SERVICE_MAIL_PASSWORD" {
  type        = string
  description = "Email password for Email Service"
  sensitive   = true
}

variable "EMAIL_SERVICE_MAIL_USERNAME" {
  type        = string
  description = "Email address for Email Service"
  sensitive   = true
}

variable "EMAIL_SERVICE_REDIS_TLS_URL" {
  type        = string
  description = "Redis(secure) URI for Email Service"
  sensitive   = true
}

variable "EMAIL_SERVICE_REDIS_URL" {
  type        = string
  description = "Redis URI for Email Service"
  sensitive   = true
}

variable "PROFILE_SERVICE_DATABASE_URL" {
  type        = string
  description = "Database URI for Profile Service"
  sensitive   = true
}

variable "PROFILE_SERVICE_REDIS_TLS_URL" {
  type        = string
  description = "Redis(secure) URI for Profile Service"
  sensitive   = true
}

variable "PROFILE_SERVICE_REDIS_URL" {
  type        = string
  description = "Redis URI for Profile Service"
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
