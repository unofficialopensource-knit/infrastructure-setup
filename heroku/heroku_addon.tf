resource "heroku_addon" "email_service_database_addon" {
  app  = heroku_app.email_service_app.name
  plan = "heroku-postgresql:hobby-dev"
}

resource "heroku_addon" "email_service_redis_addon" {
  app  = heroku_app.email_service_app.name
  plan = "heroku-redis:hobby-dev"
}

resource "heroku_addon" "profile_service_redis_addon" {
  app  = heroku_app.profile_service_app.name
  plan = "heroku-redis:hobby-dev"
}

resource "heroku_addon" "wiki_service_database_addon" {
  app  = heroku_app.wiki_app.name
  plan = "heroku-postgresql:hobby-dev"
}
