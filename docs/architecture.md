# CloudReady Network Architecture

## 1. Purpose

CloudReady is an Infrastructure as Code (IaC) learning project that defines a basic Azure network using Terraform. It demonstrates cloud networking fundamentals, resource dependencies, infrastructure documentation, and automated validation.

## 2. Architecture Components

### Azure Resource Group

The resource group `rg-cloudready-dev` organizes the project's Azure resources.

### Virtual Network

The virtual network `vnet-cloudready-dev` uses the IPv4 address space `10.10.0.0/16`.

### Application Subnet

The subnet `snet-cloudready-app` uses `10.10.1.0/24`, within the virtual network address space.

### Network Security Group

The Network Security Group `nsg-cloudready-app` is associated with the application subnet. It evaluates network traffic against custom and Azure default security rules.

## 3. Logical Network Layout

Azure Subscription
└── Resource Group: rg-cloudready-dev
    └── Virtual Network: vnet-cloudready-dev
        ├── Address space: 10.10.0.0/16
        └── Subnet: snet-cloudready-app
            ├── Address range: 10.10.1.0/24
            └── Network Security Group: nsg-cloudready-app

This represents the intended configuration, not a deployed Azure environment.

## 4. Addressing Design

| Component | CIDR | Purpose |
|---|---|---|
| Virtual network | `10.10.0.0/16` | Private network address space |
| Application subnet | `10.10.1.0/24` | Application network segment |

The subnet address range is contained within the virtual network address space.

## 5. Security Considerations

- A custom inbound rule allows TCP port 443 from the configured source CIDR, which defaults to `10.10.0.0/16`.
- This rule is illustrative, not a complete least-privilege policy. Azure default NSG rules may permit other traffic.
- Review inbound and outbound rules before deployment.
- Avoid exposing application services publicly unless required.
- Never commit credentials, access tokens, private keys, or Terraform state files.
- Review the Terraform execution plan and expected costs before applying infrastructure changes.

## 6. Validation Status and Limitations

- Terraform configuration has been formatted and validated locally.
- GitHub Actions automatically checks Terraform formatting, initialization, and validation.
- Azure resources have not been deployed because an Azure account and subscription are not available.
- Live Azure deployment, runtime connectivity, and actual network behavior have not been tested.
- Application workloads, public IP addresses, virtual machines, NAT gateways, and custom outbound restrictions are outside the current scope.

## 7. Completed Work

- Defined the resource group, virtual network, and application subnet.
- Associated a Network Security Group with the application subnet.
- Added a configurable inbound HTTPS security rule.
- Added Terraform variables and outputs.
- Added a sample variables file and configuration instructions.
- Configured GitHub Actions for automated Terraform validation.
- Documented architecture, security considerations, and project limitations.

## 8. Future Work

1. Review and test network security requirements before deployment.
2. Run a Terraform plan when Azure subscription access becomes available.
3. Review the plan and costs before any deployment.
4. Capture deployment evidence and document troubleshooting results.

---

**Project:** CloudReady  
**Author:** Vincent Kenyatta  
**Technologies:** Terraform, HCL, Microsoft Azure, Git, GitHub
