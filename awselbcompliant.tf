provider "aws" {
  region = "us-east-1"
}

resource "aws_lb" "elb_compliant" {
  name               = "elb-compliant"
  internal           = false
  load_balancer_type = "application"
  subnets            = ["subnet-12345678"]
  idle_timeout       = 60

  tags = {
    Environment = "prod"
  }
}
