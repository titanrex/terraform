resource "google_secret_manager_secret" "default" {
  project     = var.project
  secret_id   = var.secret_id
 
  replication {
    automatic = true
  }

}

resource "google_secret_manager_secret_version" "secret-version-basic" {
  count = length(var.secret_data)

  secret = google_secret_manager_secret.default.id

  secret_data = var.secret_data[count.index]
}

resource "google_secret_manager_secret_iam_member" "member" {
  project     = var.project
  secret_id   = var.secret_id
  role = var.role
  member = var.member

  depends_on = [google_secret_manager_secret.default]
}
