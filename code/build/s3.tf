provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "42801980-1317-44d4-9585-4b0e809192ac"
    git_commit           = "4ae1c8b881c780846dcb6973fe84b29b7fbc55de"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-06-12 16:21:45"
    git_last_modified_by = "35644952+manherfo@users.noreply.github.com"
    git_modifiers        = "35644952+manherfo"
    git_org              = "manherfo"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
