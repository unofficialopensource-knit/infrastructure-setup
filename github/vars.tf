variable "GH_PERSONAL_ACCESS_TOKEN" {
  type        = string
  description = "Personal Access Token for GitHub"
  sensitive   = true
}


variable "DOCKERHUB_USERNAME" {
  type = string
  description = "Dockerhub username for login"
}


variable "DOCKERHUB_TOKEN" {
  type = string
  description = "Dockerhub token for login"
  sensitive   = true
}


variable "HEROKU_EMAIL" {
  type = string
  description = "Heroku email for login"
}


variable "HEROKU_API_KEY" {
  type = string
  description = "Heroku API key for deployment"
  sensitive   = true
}
