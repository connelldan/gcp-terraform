resource "google_cloud_run_service" "danielconnl_website" {
  name     = "danielconnl-website"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "gcr.io/connelld-app-services/danielconnl"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.danielconnl_website.location
  project     = google_cloud_run_service.danielconnl_website.project
  service     = google_cloud_run_service.danielconnl_website.name

  policy_data = data.google_iam_policy.noauth.policy_data
}