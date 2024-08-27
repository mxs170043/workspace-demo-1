# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  backend "remote"{
    hostname ="app.terraform.io"
    organization = "hashicorp-trainingqwr"

    workspaces {
      name = "workspace-demo-2"
    }
  }

  # cloud {
  #   organization = "hashicorp-trainingqwr"

  #   workspaces {
  #     name = "terraform-workspace"
  #   }
  # }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0"
    }
  }

  required_version = "~> 1.2"
}
