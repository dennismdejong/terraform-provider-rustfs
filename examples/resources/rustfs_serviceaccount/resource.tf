resource "rustfs_serviceaccount" "ci_token" {
  access_key  = "ci-bot"
  secret_key  = "s3cret-token"
  name        = "CI Pipeline"
  description = "Token for CI/CD pipeline access"
  expiration  = "2030-01-01T00:00:00Z"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:GetObject"]
        Resource = ["arn:aws:s3:::*"]
      }
    ]
  })
  user = "myuser"
}
