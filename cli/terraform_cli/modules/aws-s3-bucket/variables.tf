variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "project_name" {
  description = "Name of the example project"
  type        = string

  default = "terraform-init"
}
