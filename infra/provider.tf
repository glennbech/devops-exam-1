terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.26.0"
        }
    }
    backend "s3" {
        bucket = "pgr301-2021-terraform-state"
        key = "2009-jams/apprunner-a-new-state-sensur.state"
        region = "eu-north-1"
    }
}
