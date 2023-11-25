variable "prefix"{
    type = string
}
variable "aws_id"{
    type = string
    default = "244530008913"
}

variable "image"{
    type = string
    default = "${var.aws_id}.dkr.ecr.eu-west-1.amazonaws.com/2009-jams:latest"
    
}