# define GCP region
variable "gcp_region" {
  type        = string
  description = "us-central1"
}
# define GCP project name
variable "gcp_project" {
  type        = string
  description = "connelld-app-services"
}
# GCP authentication file
variable "gcp_auth_file" {
  type        = string
  description = "~/.service-accounts/terraform-admin.json"
}
variable "bucket_name" {
  type        = string
  description = "terraform-state-connell"
}
variable "storage_class" {
  type        = string
  description = "REGIONAL"
}
variable "billing_account" {
  type        = string
  description = "0112E9-C1E34E-AC8C61"
}
variable "org_id" {
  type        = string
  description = "179294493914"
}