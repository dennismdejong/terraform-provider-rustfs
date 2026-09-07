---
page_title: "rustfs_iam_policies Data Source - rustfs"
description: |-
  List all canned IAM policies
---

# rustfs_iam_policies (Data Source)

List all canned IAM policies available on the RustFS cluster.

## Example Usage

```terraform
data "rustfs_iam_policies" "all" {}

output "policy_names" {
  value = data.rustfs_iam_policies.all.policies
}
```

## Schema

### Read-Only

- `policies` (List of Object) List of canned policy names. Each entry has:
  - `name` (String) Name of the canned policy.