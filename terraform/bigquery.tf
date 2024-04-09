# bigquery.tf | Google BigQuery Dataset Configuration

resource "google_bigquery_dataset" "uk_crime_bigquery_data" {
  dataset_id = var.bq_dataset_name
  location   = var.region
}
