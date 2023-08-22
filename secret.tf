module "secret_one" {

source = "../../modules/env_secret"
project = "perfect-operand-369501"
secret_id = "secret01"
secret_data = [
    "APP_NAME=Laravel\nAPP_ENV=local\nAPP_KEY=\nAPP_DEBUG=true\nAPP_URL=http://localhost\nAPP_VERSION=2023"
  ]

role = "roles/secretmanager.secretAccessor"
member = "terraform-dev@perfect-operand-369501.iam.gserviceaccount.com"
}
