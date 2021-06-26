resource "github_team_membership" "onlinejudge95_back_end_membership" {
  team_id  = github_team.backend_team.id
  username = "onlinejudge95"
  role     = "maintainer"
}

resource "github_team_membership" "onlinejudge95_front_end_membership" {
  team_id  = github_team.frontend_team.id
  username = "onlinejudge95"
  role     = "member"
}

resource "github_team_membership" "onlinejudge95_ops_membership" {
  team_id  = github_team.ops_team.id
  username = "onlinejudge95"
  role     = "maintainer"
}

resource "github_team_membership" "onlinejudge95_data_membership" {
  team_id  = github_team.data_team.id
  username = "onlinejudge95"
  role     = "maintainer"
}

resource "github_team_membership" "pandeysambhi_front_end_membership" {
  team_id  = github_team.frontend_team.id
  username = "pandeysambhi"
  role     = "maintainer"
}
