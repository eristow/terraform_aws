# Input variable definitions

variable "bucket_name" {
  description = "Name of the S3 bucket. Must be unique. Conflicts with `bucket_prefix`."
  type        = string
  default     = null
}

variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name. Conflicts with `bucket_name`."
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}

variable "files" {
  description = "Configuration for website files."
  type = object({
    terraform_managed     = bool
    error_document_key    = optional(string, "error.html")
    index_document_suffix = optional(string, "index.html")
    www_path              = optional(string)
  })
}

variable "cors_rules" {
  description = "List of CORS rules."
  type = list(object({
    allowed_headers = optional(set(string)),
    allowed_methods = set(string),
    allowed_origins = set(string),
    expose_headers  = optional(set(string)),
    max_age_seconds = optional(number),
  }))
  default = []
}

