terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }
  backend "s3" {
    bucket = "86s-remote-state"
    key = "ec2-module-test"  # The name upon which state file will get generated upon .
    region = "us-east-1"
    encrypt = true           # Enables encryption of the state file stored in the S3 bucket.
    use_lockfile = true      # Enables locking to prevent concurrent modifications of the state file.
    #dynamodb_table = "86s-remote-state" # Deprecated, so not used. DynamoDB is normally used for locking but here locking is handled differently.
  }
}

provider "aws" {
  # configuration  
}
