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

### Capture How to running

#### Run Terraform
<img width="832" alt="Screenshot 2024-05-15 at 11 18 32" src="https://github.com/rustamapm/dkatalis/assets/48707823/2316207c-9af8-46a7-9454-cd3bdab46d59">

#### Run Ansible 
- (Don't forget to replace inventory.yaml with the ip output from terraform also replace network.hosts and discovery.seed_hosts in elasticsearch.yaml file). Here I apply interactive mode to give value to the enrollment-token on the replica node.
  
<img width="1049" alt="Screenshot 2024-05-15 at 11 28 59" src="https://github.com/rustamapm/dkatalis/assets/48707823/01a1a088-22c6-4d14-8e54-8f860f88f966">
<img width="1032" alt="Screenshot 2024-05-15 at 11 24 40" src="https://github.com/rustamapm/dkatalis/assets/48707823/e249e5c2-5a8f-4a17-ba9d-3fa9de798868">


### Cluster already up with 3 nodes
  
<img width="1076" alt="Screenshot 2024-05-15 at 11 32 43" src="https://github.com/rustamapm/dkatalis/assets/48707823/df17db69-da1e-4bd9-aa11-6210c003bdbc">
<img width="1071" alt="Screenshot 2024-05-15 at 11 32 37" src="https://github.com/rustamapm/dkatalis/assets/48707823/16e66d5c-161f-4132-bd8b-a12d1a9291a7">



