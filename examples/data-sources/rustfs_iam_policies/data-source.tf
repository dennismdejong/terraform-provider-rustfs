data "rustfs_iam_policies" "all" {}

output "policy_names" {
  value = data.rustfs_iam_policies.all.policies
}