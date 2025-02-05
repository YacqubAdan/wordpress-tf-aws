# Overview 
<code>► README instructing deployment of application to AWS EC2 using terraform modules </code>

# Repository Structure

```sh
└── wordpress-tf-aws/terraform
    ├── README.md
    ├── main.tf
    ├── stage
    │   ├── stage.tfvars
    │   └── secrets.tfvars
    ├── prod
    │   ├── prod.tfvars
    │   └── secrets.tfvars
    ├── modules
    │   ├── ec2
    │   │   ├── main.tf
    │   │   ├── outputs.tf
    │   │   └── variables.tf
    │   └── vpc
    │       ├── main.tf
    │       ├── outputs.tf
    │       └── variables.tf
    └── variables.tf
```

# Getting Started

## Requirements

Ensure you have the following dependencies installed on your system:

- **Terraform:** `version x.y.z`

## Installation

1. Clone the `wordpress-tf-aws` repository:

   ```bash
   git clone https://github.com/YacqubAdan/wordpress-tf-aws.git
   ```

2. Change to the project directory:

   ```bash
   cd wordpress-tf-aws/terraform
   ```

3. Initialise your working directory containing Terraform configuration files using the command below. This will install your plugins, modules, and download the dependencies:

   ```bash
   terraform init
   ```

