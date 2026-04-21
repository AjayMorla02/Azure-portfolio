# Infrastructure — Azure Bicep

This folder contains all Infrastructure as Code (IaC) for the Azure Portfolio project.

## Resources Provisioned

| Resource | Type | Tier |
|---|---|---|
| Static Web App | Microsoft.Web/staticSites | Free |

## Folder Structure

\`\`\`
infra/
├── main.bicep              ← Main template
├── main.dev.bicepparam     ← Dev environment params
├── main.prod.bicepparam    ← Prod environment params
└── README.md               ← This file
\`\`\`

## Deploying Manually

\`\`\`bash
# Login to Azure
az login

# Create resource group
az group create --name rg-portfolio-prod --location eastus2

# Deploy to Azure
az deployment group create \
  --resource-group rg-portfolio-prod \
  --template-file main.bicep \
  --parameters main.prod.bicepparam
\`\`\`

## Parameters

| Parameter | Description | Default |
|---|---|---|
| appName | Name of the Static Web App | portfolio-swa |
| location | Azure region | eastus2 |
| environment | Environment name | prod |
| repositoryUrl | GitHub repo URL | — |
| branch | Branch to deploy | main |