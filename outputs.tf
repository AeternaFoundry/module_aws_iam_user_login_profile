output "iam_user_login_profiles_id" {
  description = "Map of id values across all iam_user_login_profiles, keyed the same as var.iam_user_login_profiles"
  value       = { for k, v in aws_iam_user_login_profile.iam_user_login_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_user_login_profiles_encrypted_password" {
  description = "Map of encrypted_password values across all iam_user_login_profiles, keyed the same as var.iam_user_login_profiles"
  value       = { for k, v in aws_iam_user_login_profile.iam_user_login_profiles : k => v.encrypted_password if v.encrypted_password != null && length(v.encrypted_password) > 0 }
}
output "iam_user_login_profiles_key_fingerprint" {
  description = "Map of key_fingerprint values across all iam_user_login_profiles, keyed the same as var.iam_user_login_profiles"
  value       = { for k, v in aws_iam_user_login_profile.iam_user_login_profiles : k => v.key_fingerprint if v.key_fingerprint != null && length(v.key_fingerprint) > 0 }
}
output "iam_user_login_profiles_password" {
  description = "Map of password values across all iam_user_login_profiles, keyed the same as var.iam_user_login_profiles"
  value       = { for k, v in aws_iam_user_login_profile.iam_user_login_profiles : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "iam_user_login_profiles_password_length" {
  description = "Map of password_length values across all iam_user_login_profiles, keyed the same as var.iam_user_login_profiles"
  value       = { for k, v in aws_iam_user_login_profile.iam_user_login_profiles : k => v.password_length if v.password_length != null }
}
output "iam_user_login_profiles_password_reset_required" {
  description = "Map of password_reset_required values across all iam_user_login_profiles, keyed the same as var.iam_user_login_profiles"
  value       = { for k, v in aws_iam_user_login_profile.iam_user_login_profiles : k => v.password_reset_required if v.password_reset_required != null }
}
output "iam_user_login_profiles_pgp_key" {
  description = "Map of pgp_key values across all iam_user_login_profiles, keyed the same as var.iam_user_login_profiles"
  value       = { for k, v in aws_iam_user_login_profile.iam_user_login_profiles : k => v.pgp_key if v.pgp_key != null && length(v.pgp_key) > 0 }
}
output "iam_user_login_profiles_user" {
  description = "Map of user values across all iam_user_login_profiles, keyed the same as var.iam_user_login_profiles"
  value       = { for k, v in aws_iam_user_login_profile.iam_user_login_profiles : k => v.user if v.user != null && length(v.user) > 0 }
}

