terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
    tfe = {
      source = "hashicorp/tfe"
    }
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# 1er AWS => créer deployer + clefs SERVICE
# 2eme terraform => Workspace du service avec les variables du deployer SERVICE
# 3eme github => on create => remplit les resources sur le workspace SERVICE, team token organization pour accéder au workspace du service

variable "github_organization" {
  description = "The github organization name"
  nullable    = false
  default     = false
}

variable "terraform_organization" {
  description = "The github organization name"
  nullable    = false
  default     = false
}

variable "aws_organization" {
  description = "The github organization name"
  nullable    = false
  default     = false
}

variable "github_repository" {
  description = "The repository which host the code within the organization"
  nullable    = false
  default     = false
}

variable "commit_author_name" {
  description = "The commit author name for generated files"
  nullable    = false
  default     = false
}


variable "commit_author_email" {
  description = "The commit author email for generated files"
  nullable    = false
  default     = false
}

variable "project" {
  description = "The project name in the Project-Service-Layer architecture"
  nullable    = false
  default     = false
}

variable "service" {
  description = "The service name in the Project-Service-Layer architecture"
  nullable    = false
  default     = false
}

variable "service_deployer_group_policy_arn" {
  description = "The service deployer group policy arn, only able to use AWS Managed Policies for now"
  nullable    = false
  default     = false
}