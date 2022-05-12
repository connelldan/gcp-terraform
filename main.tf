module "connelld_app_services" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 10.1"

  name            = "app-services"
  project_id      = "connelld-app-services"
  billing_account = var.billing_account
  org_id          = var.org_id

  activate_apis = [
    "run.googleapis.com",
    "storage.googleapis.com",
    "containerregistry.googleapis.com",
    "cloudbuild.googleapis.com"
  ]
}