variable "HEROKU_EMAIL" {
  type        = string
  description = "Heroku email for login"
}

variable "HEROKU_API_KEY" {
  type        = string
  description = "Heroku API key for deployment"
  sensitive   = true
}

variable "EMAIL_SERVICE_DATABASE_URL" {
  type        = string
  description = "Database URI for Email Service"
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
