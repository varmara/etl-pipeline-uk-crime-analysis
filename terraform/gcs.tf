# gcs.tf | Google Cloud Storage bucket Configuration

resource "google_storage_bucket" "data-bucket" {
  name          = var.gcs_bucket_name
  location      = var.region
  force_destroy = true


  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

