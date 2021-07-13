variable "GH_PERSONAL_ACCESS_TOKEN" {
  type        = string
  description = "Personal Access Token for GitHub"
  sensitive   = true
}

variable "DOCKERHUB_USERNAME" {
  type        = string
  description = "Dockerhub username for login"
}

variable "DOCKERHUB_TOKEN" {
  type        = string
  description = "Dockerhub token for login"
  sensitive   = true
}

variable "HEROKU_EMAIL" {
  type        = string
  description = "Heroku email for login"
}

variable "HEROKU_API_KEY" {
  type        = string
  description = "Heroku API key for deployment"
  sensitive   = true
}

variable "API_GATEWAY_CODECOV_TOKEN" {
  type        = string
  description = "Codecov token for API gateway"
  sensitive   = true
}

variable "SERVICE_MANAGEMENT_USER_AWS_ACCESS_KEY" {
  type        = string
  description = "Access key for SERVICE MANAGEMENT IAM user"
  sensitive   = true
}

variable "SERVICE_MANAGEMENT_USER_AWS_SECRET_KEY" {
  type        = string
  description = "Secret key for SERVICE MANAGEMENT IAM user"
  sensitive   = true
}

variable "SNYK_SECRET_KEY" {
  type        = string
  description = "Secret key for Snyk"
  sensitive   = true
}

variable "GAMBLEY_BACKEND_DEEPSOURCE_DSN" {
  type        = string
  description = "Deepsource DSN for gambley_backend"
  sensitive   = true
}

variable "GAMBLEY_BACKEND_MAIL_USERNAME" {
  type        = string
  description = "Username for SMTP server"
  sensitive   = true
}

variable "GAMBLEY_BACKEND_MAIL_PASSWORD" {
  type        = string
  description = "Password for SMTP server"
  sensitive   = true
}

variable "GAMBLEY_BACKEND_SUPPRESS_SEND" {
  type        = string
  description = "Flag to disable sending mail"
  sensitive   = true
}

variable "GAMBLEY_BACKEND_SSH_USER" {
  type        = string
  description = "User for SSHing to master node"
  sensitive   = true
}

variable "GAMBLEY_BACKEND_SSH_HOST" {
  type        = string
  description = "Host for SSHing to swarm cluster"
  sensitive   = true
}
