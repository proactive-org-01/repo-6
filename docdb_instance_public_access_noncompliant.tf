provider "aws" {
  region = "us-east-1"
}

resource "aws_docdb_cluster_instance" "public_instance" {
  identifier          = "public-docdb-instance"
  cluster_identifier  = "insecure-docdb-cluster"
  instance_class      = "db.r5.large"
  engine              = "docdb"
  publicly_accessible = true
}
