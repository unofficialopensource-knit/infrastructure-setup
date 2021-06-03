resource "heroku_addon" "email_service_database_addon" {
  app  = heroku_app.email_service_app.name
  plan = "heroku-postgresql:hobby-dev"
}

resource "heroku_addon" "email_service_redis_addon" {
  app  = heroku_app.email_service_app.name
  plan = "heroku-redis:hobby-dev"
}

resource "heroku_addon" "user_management_service_redis_addon" {
  app  = heroku_app.user_management_service_app.name
  plan = "heroku-redis:hobby-dev"
}
