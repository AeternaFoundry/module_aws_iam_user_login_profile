variable "iam_user_login_profiles" {
  description = <<EOT
Map of iam_user_login_profiles, attributes below
Required:
    - user
Optional:
    - password_length
    - password_reset_required
    - pgp_key
EOT

  type = map(object({
    user                    = string
    password_length         = optional(number)
    password_reset_required = optional(bool)
    pgp_key                 = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.iam_user_login_profiles : (
        v.password_length == null || (v.password_length >= 5 && v.password_length <= 128)
      )
    ])
    error_message = "must be between 5 and 128"
  }
}

