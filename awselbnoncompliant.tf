provider "aws" {
  region = "us-east-1"
}

resource "aws_lb" "elb_noncompliant" {
  name               = "elb-noncompliant"
  internal           = false
  load_balancer_type = "application"
  subnets            = ["subnet-12345678"]
  idle_timeout       = 700

  tags = {
    Environment = "dev"
  }
}
