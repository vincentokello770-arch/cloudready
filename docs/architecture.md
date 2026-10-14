# CloudReady Network Architecture

## 1. Purpose

CloudReady is an Infrastructure as Code (IaC) learning project that defines a basic Azure network using Terraform. It demonstrates cloud networking fundamentals, resource dependencies, and infrastructure documentation.

## 2. Architecture Components

### Azure Resource Group

The resource group `rg-cloudready-dev` organizes the project's Azure resources for management and lifecycle operations.

### Virtual Network

The virtual network `vnet-cloudready-dev` uses the IPv4 address space `10.10.0.0/16`. It provides a private network boundary for Azure resources.

### Application Subnet

The subnet `snet-cloudready-app` uses `10.10.1.0/24`, a smaller address range inside the virtual network. It is reserved for future application resources.

### Network Security Group

The Network Security Group `nsg-cloudready-app` is associated with the application subnet. It evaluates network traffic against inbound and outbound security rules. Azure default NSG rules remain in effect unless overridden by applicable custom rules.

## 3. Logical Network Layout

Azure Subscription
└── Resource Group: rg-cloudready-dev
    └── Virtual Network: vnet-cloudready-dev
        ├── Address space: 10.10.0.0/16
        └── Subnet: snet-cloudready-app
            ├── Address range: 10.10.1.0/24
            └── Network Security Group: nsg-cloudready-app

This is a logical representation of the intended configuration, not evidence of a deployed Azure environment.

## 4. Addressing Design

| Component | CIDR | Purpose |
|---|---|---|
| Virtual network | `10.10.0.0/16` | Private network address space |
| Application subnet | `10.10.1.0/24` | Application network segment |

The subnet address range is contained within the virtual network address space.
## 5. Security Considerations
- The custom HTTPS inbound rule allows TCP port 443 from the configured source CIDR, which defaults to 10.10.0.0/16. This is an illustrative rule, not a complete least-privilege policy: Azure default NSG rules may still permit other traffic.

- Apply the principle of least privilege when defining network access.
- Avoid exposing application services to the public internet unless required.
- Review inbound and outbound NSG rules before deployment.
- Never commit credentials, access tokens, private keys, or Terraform state files.
- Review the Terraform execution plan before applying infrastructure changes.
- Check expected cloud costs before deployment.

## 6. Current Status and Limitations

The Terraform configuration has been formatted and validated locally. Azure resources have not been deployed because an Azure account and subscription are not currently available.

The configuration does not yet include custom NSG rules, application workloads, a public IP address, a virtual machine, or a NAT gateway.

## 7. Planned Improvements

1. Define and validate explicit NSG security rules.
2. Review network traffic flows and routing requirements.
3. Run Terraform plan when Azure authentication is available.
4. Deploy only when a suitable Azure subscription is available and costs have been reviewed.
5. Capture deployment evidence and document troubleshooting results.

---

**Project:** CloudReady  
**Author:** Vincent Kenyatta  
**Technologies:** Terraform, HCL, Microsoft Azure, Git, GitHub
