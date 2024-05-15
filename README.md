# Here are the steps to run the script and Provisioning Elasticsearch Cluster in AWS Ec2 using Terraform and Ansible 
I don't use the free tier instance because the server hangs when I run elasticsearch in there and here I use the t3.small instance type. I worked quite hard when doing this task because it was my first time setting up an elasticsearch cluster. I spent almost 15 hours working on this. and I realize this is not perfect yet, there is still a lot that can be improved from my setup.

### Create 3 Ec2 Instance and Install Elasticsearch

```yaml
- cd live/ec2-elasticsearch
- terraform init
- terraform plan
- terraform apply
```

### Configure Elasticsearch Cluster with Ansible

```yaml
- cd ansible
- ansible-playbook -i inventory.ini elasticsearch.yaml
```