variable "bucket_name" {
  default = "no-defined"
  type = string
  description = "The bucket name"
  validation {
    condition = length(var.bucket_name) > 7 && substr(var.bucket_name, 0, 5) == "test-"
    error_message = "The bucket_name must be greater 7 and starts with test-"
  }
  sensitive = false
  nullable = false
}

variable "access_key" {
  default = "no-defined"
  type = string
  description = "The access key"
  sensitive = true
  nullable = false
}

variable "secret_key" {
  default = "no-defined"
  type = string
  description = "The secret key"
  sensitive = true
  nullable = false
}

variable "region" {
  default = "no-defined"
  type = string
  description = "The region"
  sensitive = false
  nullable = false
}
