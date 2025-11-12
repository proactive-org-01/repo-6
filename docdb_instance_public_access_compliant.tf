provider "aws" {
  region = "us-east-1"
}

resource "aws_docdb_cluster_instance" "private_instance" {
  identifier          = "private-docdb-instance"
  cluster_identifier  = "secure-docdb-cluster"
  instance_class      = "db.r5.large"
  engine              = "docdb"
  publicly_accessible = false
}
