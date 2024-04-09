variable "app_name" {
  type        = string
  description = "Application Name"
  default     = "uk-crime"
}

variable "container_cpu" {
  description = "Container cpu"
  default     = "2000m"
}

variable "container_memory" {
  description = "Container memory"
  default     = "2G"
}

variable "project_id" {
  type        = string
  description = "The name of the project"
  default     = "uk-crime-data-project-30995"
}

variable "region" {
  type        = string
  description = "The default compute region"
  default     = "europe-west1"
}

variable "zone" {
  type        = string
  description = "The default compute zone"
  default     = "europe-west1-b"
}

variable "repository" {
  type        = string
  description = "The name of the Artifact Registry repository to be created"
  default     = "uk-crime-data-mage"
}

variable "database_user" {
  type        = string
  description = "The username of the Postgres database."
  default     = "mageuser"
}

variable "database_password" {
  type        = string
  description = "The password of the Postgres database."
  sensitive   = true
}

variable "docker_image" {
  type        = string
  description = "The docker image to deploy to Cloud Run."
  default     = "mageai/mageai:latest"
}

variable "domain" {
  description = "Domain name to run the load balancer on. Used if `ssl` is `true`."
  type        = string
  default     = ""
}

variable "ssl" {
  description = "Run load balancer on HTTPS and provision managed certificate with provided `domain`."
  type        = bool
  default     = false
}

variable "gcs_bucket_name" {
  type        = string
  description = "The name of the GCS bucket"
  default     = "uk_crime_data_bucket"
}

variable "bq_dataset_name" {
  type        = string
  description = "BigQuery Dataset Name"
  default     = "uk_crime_data"
}