resource "aws_s3_bucket" "terraform_state" {
  bucket = "ada-challenge-terraform-state-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "Terraform State"
    Environment = "DevOps"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
