resource "github_team" "backend_team" {
  name        = "Backend Team"
  description = "Team responsible for looking into backend affairs"
  privacy     = "closed"
}

resource "github_team" "frontend_team" {
  name        = "Frontend Team"
  description = "Team responsible for looking into frontend affairs"
  privacy     = "closed"
}

resource "github_team" "ops_team" {
  name        = "Ops Team"
  description = "Team responsible for looking into operational affairs"
  privacy     = "closed"
}

resource "github_team" "data_team" {
  name        = "Data Team"
  description = "Team responsible for looking into data related affairs"
  privacy     = "closed"
}
