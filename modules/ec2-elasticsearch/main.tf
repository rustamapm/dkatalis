provider "aws" {
  region = var.region
}

resource "aws_security_group" "ec2_sg" {
  name        = var.sg_name_prefix
  description = "Security group for EC2 instances running Elasticsearch"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ssh_cidr_blocks
  }

  ingress {
    from_port   = 9200
    to_port     = 9200
    protocol    = "tcp"
    cidr_blocks = var.allowed_es_cidr_blocks
  }

  ingress {
    from_port   = 9300
    to_port     = 9300
    protocol    = "tcp"
    cidr_blocks = var.allowed_esnode_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.sg_name_prefix}-sg"
  }
}

resource "aws_instance" "ec2_instances" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = file("${path.module}/startup.sh")

  tags = {
    Name = "${var.instance_name}-${count.index}"
  }

  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  subnet_id              = var.subnet_id

  root_block_device {
    volume_size = var.volume_size
  }

  lifecycle {
    create_before_destroy = true
  }
}
