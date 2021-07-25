resource "github_issue_label" "gambley_backend_bug" {
  repository  = github_repository.gambley_backend.name
  name        = "bug"
  color       = "d73a4a"
  description = "Something isn't working"
}

resource "github_issue_label" "gambley_backend_documentation" {
  repository  = github_repository.gambley_backend.name
  name        = "documentation"
  color       = "0075ca"
  description = "Improvements or additions to documentation"
}

resource "github_issue_label" "gambley_backend_duplicate" {
  repository  = github_repository.gambley_backend.name
  name        = "duplicate"
  color       = "cfd3d7"
  description = "This issue or pull request already exists"
}

resource "github_issue_label" "gambley_backend_enhancement" {
  repository  = github_repository.gambley_backend.name
  name        = "enhancement"
  color       = "a2eeef"
  description = "New feature or request"
}

resource "github_issue_label" "gambley_backend_good_first_issue" {
  repository  = github_repository.gambley_backend.name
  name        = "good first issue"
  color       = "7057ff"
  description = "Good for newcomers"
}

resource "github_issue_label" "gambley_backend_help_wanted" {
  repository  = github_repository.gambley_backend.name
  name        = "help wanted"
  color       = "008672"
  description = "Extra attention is needed"
}

resource "github_issue_label" "gambley_backend_invalid" {
  repository  = github_repository.gambley_backend.name
  name        = "invalid"
  color       = "e4e669"
  description = "This doesn't seem right"
}

resource "github_issue_label" "gambley_backend_question" {
  repository  = github_repository.gambley_backend.name
  name        = "question"
  color       = "d876e3"
  description = "Further information is requested"
}

resource "github_issue_label" "gambley_backend_wontfix" {
  repository  = github_repository.gambley_backend.name
  name        = "wontfix"
  color       = "ffffff"
  description = "This will not be worked on"
}

resource "github_issue_label" "platform_setup_bug" {
  repository  = github_repository.platform_setup.name
  name        = "bug"
  color       = "d73a4a"
  description = "Something isn't working"
}

resource "github_issue_label" "platform_setup_documentation" {
  repository  = github_repository.platform_setup.name
  name        = "documentation"
  color       = "0075ca"
  description = "Improvements or additions to documentation"
}

resource "github_issue_label" "platform_setup_duplicate" {
  repository  = github_repository.platform_setup.name
  name        = "duplicate"
  color       = "cfd3d7"
  description = "This issue or pull request already exists"
}

resource "github_issue_label" "platform_setup_enhancement" {
  repository  = github_repository.platform_setup.name
  name        = "enhancement"
  color       = "a2eeef"
  description = "New feature or request"
}

resource "github_issue_label" "platform_setup_good_first_issue" {
  repository  = github_repository.platform_setup.name
  name        = "good first issue"
  color       = "7057ff"
  description = "Good for newcomers"
}

resource "github_issue_label" "platform_setup_help_wanted" {
  repository  = github_repository.platform_setup.name
  name        = "help wanted"
  color       = "008672"
  description = "Extra attention is needed"
}

resource "github_issue_label" "platform_setup_invalid" {
  repository  = github_repository.platform_setup.name
  name        = "invalid"
  color       = "e4e669"
  description = "This doesn't seem right"
}

resource "github_issue_label" "platform_setup_question" {
  repository  = github_repository.platform_setup.name
  name        = "question"
  color       = "d876e3"
  description = "Further information is requested"
}

resource "github_issue_label" "platform_setup_wontfix" {
  repository  = github_repository.platform_setup.name
  name        = "wontfix"
  color       = "ffffff"
  description = "This will not be worked on"
}

resource "github_issue_label" "web_client_bug" {
  repository  = github_repository.web_client.name
  name        = "bug"
  color       = "d73a4a"
  description = "Something isn't working"
}

resource "github_issue_label" "web_client_documentation" {
  repository  = github_repository.web_client.name
  name        = "documentation"
  color       = "0075ca"
  description = "Improvements or additions to documentation"
}

resource "github_issue_label" "web_client_duplicate" {
  repository  = github_repository.web_client.name
  name        = "duplicate"
  color       = "cfd3d7"
  description = "This issue or pull request already exists"
}

resource "github_issue_label" "web_client_enhancement" {
  repository  = github_repository.web_client.name
  name        = "enhancement"
  color       = "a2eeef"
  description = "New feature or request"
}

resource "github_issue_label" "web_client_good_first_issue" {
  repository  = github_repository.web_client.name
  name        = "good first issue"
  color       = "7057ff"
  description = "Good for newcomers"
}

resource "github_issue_label" "web_client_help_wanted" {
  repository  = github_repository.web_client.name
  name        = "help wanted"
  color       = "008672"
  description = "Extra attention is needed"
}

resource "github_issue_label" "web_client_invalid" {
  repository  = github_repository.web_client.name
  name        = "invalid"
  color       = "e4e669"
  description = "This doesn't seem right"
}

resource "github_issue_label" "web_client_question" {
  repository  = github_repository.web_client.name
  name        = "question"
  color       = "d876e3"
  description = "Further information is requested"
}

resource "github_issue_label" "web_client_wontfix" {
  repository  = github_repository.web_client.name
  name        = "wontfix"
  color       = "ffffff"
  description = "This will not be worked on"
}

resource "github_issue_label" "wiki_bug" {
  repository  = github_repository.wiki.name
  name        = "bug"
  color       = "d73a4a"
  description = "Something isn't working"
}

resource "github_issue_label" "wiki_documentation" {
  repository  = github_repository.wiki.name
  name        = "documentation"
  color       = "0075ca"
  description = "Improvements or additions to documentation"
}

resource "github_issue_label" "wiki_duplicate" {
  repository  = github_repository.wiki.name
  name        = "duplicate"
  color       = "cfd3d7"
  description = "This issue or pull request already exists"
}

resource "github_issue_label" "wiki_enhancement" {
  repository  = github_repository.wiki.name
  name        = "enhancement"
  color       = "a2eeef"
  description = "New feature or request"
}

resource "github_issue_label" "wiki_good_first_issue" {
  repository  = github_repository.wiki.name
  name        = "good first issue"
  color       = "7057ff"
  description = "Good for newcomers"
}

resource "github_issue_label" "wiki_help_wanted" {
  repository  = github_repository.wiki.name
  name        = "help wanted"
  color       = "008672"
  description = "Extra attention is needed"
}

resource "github_issue_label" "wiki_invalid" {
  repository  = github_repository.wiki.name
  name        = "invalid"
  color       = "e4e669"
  description = "This doesn't seem right"
}

resource "github_issue_label" "wiki_question" {
  repository  = github_repository.wiki.name
  name        = "question"
  color       = "d876e3"
  description = "Further information is requested"
}

resource "github_issue_label" "wiki_wontfix" {
  repository  = github_repository.wiki.name
  name        = "wontfix"
  color       = "ffffff"
  description = "This will not be worked on"
}
