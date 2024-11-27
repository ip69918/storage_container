# Terraform Configuration for Blob Storage Deployment

This repository contains Terraform configurations for deploying and managing Blob Storage resources. It includes environment-specific variables, providers, and main configuration files.

## Repository Structure

- **`blob_storage.tf`**: Contains the Terraform configuration specific to the Blob Storage resources.
- **`main.tf`**: The main Terraform configuration file that includes resource declarations and calls to modules.
- **`variable.tf`**: Defines all input variables for the Terraform configuration.
- **`provider.tf`**: Specifies the provider configuration (e.g., Azure).
- **`.tfvars/qa.tfvars`**: Contains environment-specific values for variables, in this case, for the QA environment.

## Prerequisites

Before using these configurations, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads)
- Appropriate CLI tools for your cloud provider (e.g., Azure CLI)
- Access and permissions to manage resources in your target cloud environment.

## Usage

1. **Clone the repository**:
   
   ```bash
   git clone https://github.com/ip69918/storage_container.git
   cd storage_container

3. **Initialize Terraform**:
   ```bash
   terraform init

4. **Plan the deployment using the QA environment**:
   ```bash
   terraform plan -var-file=./.tfvars/qa.tfvars

5. **Apply the configuration:**
   ```bash
   terraform apply -var-file=.tfvars/qa.tfvars

6. **To destroy the resources:**
   ```bash
   terraform destroy -var-file=.tfvars/qa.tfvars


