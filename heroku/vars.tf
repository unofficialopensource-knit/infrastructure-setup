variable "HEROKU_EMAIL" {
  type        = string
  description = "Heroku email for login"
}

variable "HEROKU_API_KEY" {
  type        = string
  description = "Heroku API key for deployment"
  sensitive   = true
}
