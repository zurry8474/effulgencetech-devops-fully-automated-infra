#!/bin/bash
# Hardware requirements: Amazon Linux 2 Kernel 5.10 AMI with mimum t2.medium type instance & port 8080(jenkins), 9100 (node-exporter) should be allowed on the security groups
#Note: Dont use the latest EC2 Linux of 2023 as it doesnt have amazon-linux-extras which was used in the Jenkins installation as per the old AMI.
# Installing Jenkins
sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key # Note: Refer this link to change this key line frequently https://pkg.jenkins.io/redhat-stable/
sudo yum upgrade
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install jenkins -y
sudo su
sudo echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
sudo systemctl enable jenkins
sudo systemctl start jenkins


#Install Terraform
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
terraform --version
aws configure