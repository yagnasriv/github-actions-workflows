output "bucket_name" {
  value = aws_s3_bucket.example.bucket
  description = "the name of the AWS S3 bucket"
}

output "bucket_arn" {
    value = aws_s3_bucket.example.arn
    description = "The Amazon Resource name (ARN) for a S3 bucket"
}

output "bucket_region" {
  value = aws_s3_bucket.example.region
  description = "The AWS region in which the S3 bucket is located"
}