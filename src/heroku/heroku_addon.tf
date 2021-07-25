resource "heroku_addon" "wiki_service_database_addon" {
  app  = heroku_app.wiki_app.name
  plan = "heroku-postgresql:hobby-dev"
}
