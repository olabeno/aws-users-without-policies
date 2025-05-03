module "iam_iam-user" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  # version = "5.47.1"

  # insert the 1 required variable here
  for_each = toset(["Todd", "James", "Alice", "Dottie", "Olabeno"])
  name     = "${each.key}_sorbebee-user"
}
