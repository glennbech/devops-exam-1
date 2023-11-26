terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.26.0"
            region = "eu-west-1"
        }
    }
    backend "s3" {
        bucket = "pgr301-2021-terraform-state"
        key = "2009-jams/apprunner-a-new-state.state"
        region = "eu-north-1"
    }
}
