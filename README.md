# CloudReady: Infrastructure as Code & Deployment Lab

**A hands-on cloud engineering portfolio project by Vincent Kenyatta**

## Project Overview

CloudReady is a practical cloud engineering lab designed to demonstrate infrastructure automation, cloud networking, security fundamentals, and version control using Infrastructure as Code (IaC).

The project uses **Terraform and HashiCorp Configuration Language (HCL)** to define and validate cloud infrastructure. The initial implementation targets Microsoft Azure, with an emphasis on reusable configuration, secure defaults, documentation, and reproducible deployments.

## Objectives

- Learn and apply Terraform and HCL.
- Design virtual networks and subnets.
- Configure network security rules.
- Understand cloud infrastructure deployment workflows.
- Use Git and GitHub for version control and portfolio development.
- Document architecture, validation, security considerations, and troubleshooting.
- Build practical skills transferable across major cloud platforms.

## Planned Technology Stack

| Technology | Purpose |
|---|---|
| Ubuntu on WSL2 | Linux development environment |
| Terraform | Infrastructure as Code |
| HCL | Infrastructure configuration language |
| Microsoft Azure | Target cloud platform |
| Git | Version control |
| GitHub | Public portfolio and source code hosting |
| Markdown | Technical documentation |

## Planned Architecture

The initial infrastructure design will include:

- An Azure Resource Group.
- An Azure Virtual Network (VNet).
- A subnet within the virtual network.
- A Network Security Group (NSG) with explicitly defined security rules.
- Terraform configuration for infrastructure validation and planning.

Resources will only be described as deployed after successful deployment and verification.

## Project Roadmap

- [x] Prepare the Ubuntu development environment.
- [x] Install Terraform.
- [x] Configure Git identity.
- [x] Initialize the local Git repository.
- [x] Create a Terraform-focused `.gitignore`.
- [ ] Define the project architecture.
- [ ] Write Terraform configuration files.
- [ ] Run Terraform formatting and validation.
- [ ] Review the execution plan.
- [ ] Configure Azure authentication if deployment is feasible.
- [ ] Deploy and verify resources if an appropriate Azure subscription is available.
- [ ] Publish the project to GitHub.
- [ ] Add deployment evidence, troubleshooting notes, and lessons learned.

## Security Practices

- Do not commit credentials, access tokens, private keys, or secrets.
- Exclude Terraform state files and local variable files from version control.
- Apply least-privilege access principles.
- Review network security rules before deployment.
- Check the Terraform plan before making infrastructure changes.
- Consider cloud resource costs before deployment.

## Learning Outcomes

This project is intended to demonstrate practical understanding of Infrastructure as Code, Linux-based tooling, cloud networking, security controls, version control, and infrastructure troubleshooting.

## Author

**Vincent Kenyatta**  
Cloud Engineering Learner | ICT Professional | Technology Educator

This repository documents my hands-on journey toward cloud engineering and cloud solutions architecture.

---

*Project status: In development. Planned components and deployment status will be updated as implementation progresses.*
