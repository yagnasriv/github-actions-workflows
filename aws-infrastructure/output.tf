# output "bucket_name" {
#   value = aws_s3_bucket.example.bucket
#   description = "the name of the AWS S3 bucket"
# }

# output "bucket_arn" {
#     value = aws_s3_bucket.example.arn
#     description = "The Amazon Resource name (ARN) for a S3 bucket"
# }

# output "bucket_region" {
#   value = aws_s3_bucket.example.region
#   description = "The AWS region in which the S3 bucket is located"
# }

output "aws_instance" {
  value = aws_instance.this.ami
  description = "AMI for the EC2 instance "
}

output "instance_type" {
  value = aws_instance.this.instance_type
  description = "Type of the EC2 instance created"
}

output "subnet_id" {
  value = aws_instance.this.subnet_id
  description = "ID of the Subnet where the EC2 instance is created"
}