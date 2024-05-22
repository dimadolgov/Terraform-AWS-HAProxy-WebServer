# Terraform AWS Infrastructure Deployment


This repository contains Terraform code for provisioning and managing AWS infrastructure for a web application with HAProxy.
The end result will allow you to access your server "haproxy" using public ip address and each new web request will be answered by different web server

## Table of Contents

1. [Overview](#overview)
2. [Infrastructure Components](#infrastructure-components)
3. [Usage](#usage)
4. [Variables](#variables)
5. [Outputs](#outputs)
6. [Templates](#templates)
7. [Additional Information](#additional-information)
   
## Overview

The Terraform scripts in this repository aim to automate the deployment of a basic AWS infrastructure consisting of a VPC with public subnets, EC2 instances for web servers, and an HAProxy instance for load balancing.

## Infrastructure Components

### 01-provider

Configures the AWS provider in Terraform.

### 02-network

Defines the AWS VPC resource along with public subnets, an internet gateway, and route tables.

### 03-ec2

Configures EC2 instances for HAProxy and web servers.

### 04-security_group

Defines AWS security groups to control inbound and outbound traffic.

### 05-outputs

Outputs information about the deployed infrastructure, such as instance IDs, IP addresses, and tags.

### 06-haproxy.tpl

A template file used to configure HAProxy instance.

### 07-web_server.tpl

A template file used to configure web server instances.

### 08-variables

Defines input variables used by the Terraform scripts.

## Usage

1. Clone this repository to your local machine.
2. Update the `variables.tf` file with your desired configurations.
3. Run `terraform init` to initialize the Terraform working directory.
4. Run `terraform plan` to create an execution plan.
5. Run `terraform apply` to apply the changes and provision the infrastructure on AWS.
6. Access the deployed resources using the provided outputs.

## Variables

The `variables.tf` file contains the following configurable variables:

- `region`: AWS region to deploy the infrastructure.
- `vpc_cidr_block`: CIDR block for the VPC.
- `subnet_cidr_public`: CIDR block for public subnets.
- `ingress_cidr_blocks`: List of CIDR blocks for inbound traffic.
- `ingres_ports`: List of ports to allow inbound traffic.
- `egress_ports`: List of CIDR blocks for outbound traffic.
- `instance_type`: EC2 instance type.
- `ami`: Amazon Machine Image (AMI) ID.
- `ec2_count`: Number of EC2 instances to deploy.

## Outputs

The Terraform scripts provide the following outputs:

- `Name`: Name tag of the EC2 web server instances.
- `instance_ids`: Instance IDs of the EC2 web server instances.
- `private_ip_addresses`: Private IP addresses of the EC2 web server instances.
- `public_ip_addresses`: Public IP addresses of the EC2 web server instances.
- `instance_ip`: List of all private IP addresses of the EC2 web server instances.
- `instance_name`: List of all Name tags of the EC2 web server instances.

## Templates

- `06-haproxy.tpl`: Template file to configure HAProxy instance.
- `07-web_server.tpl`: Template file to configure web server instances.

## Additional Information

- The `web_haproxy` security group allows traffic on specified ports and enables communication between instances.
- Customization options are available in `variables.tf`. Adjust as needed for your specific use case.

