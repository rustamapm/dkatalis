module "ec2_elasticsearch" {
  source             = "../../modules/ec2-elasticsearch"
  region             = "ap-southeast-3"
  ami_id             = "ami-09775c84aee394bf8"
  instance_type      = "t3.small"
  instance_count     = 3
  key_name           = "elastic_key"
  instance_name      = "elasticsearch-node"
  allowed_ssh_cidr_blocks   = ["0.0.0.0/0"]
  allowed_es_cidr_blocks    = ["0.0.0.0/0"]
  allowed_esnode_cidr_blocks= ["0.0.0.0/0"]
  sg_name_prefix            = "elasticsearch"
  subnet_id          = "subnet-05520403b72c8e5ce"
  vpc_id             = "vpc-03538590ee1d34058"
  volume_size        = 30
}

output "instance_ids" {
  value = module.ec2_elasticsearch.instance_ids
}

output "security_group_id" {
  value = module.ec2_elasticsearch.security_group_id
}

output "public_dns" {
  value = module.ec2_elasticsearch.public_dns
}

output "private_ips" {
  value = module.ec2_elasticsearch.private_ips
}