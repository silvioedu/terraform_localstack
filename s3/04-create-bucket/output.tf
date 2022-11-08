output "created_bucket_name" {
  value = aws_s3_bucket.test_bucket.bucket
  description = "the bucket name created"
}

output "created_bucket_arn" {
  value = aws_s3_bucket.test_bucket.arn
  description = "the bucket ard created"  
}