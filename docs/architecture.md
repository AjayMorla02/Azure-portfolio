# Architecture — Azure Portfolio

## Overview
Static portfolio website hosted on Azure with automated CI/CD.

## Architecture Diagram

\`\`\`
GitHub Repo (source)
      │
      │  push to main
      ▼
GitHub Actions
      │
      ├── Job 1: Validate Bicep
      ├── Job 2: Deploy Infra (Bicep → Azure)
      └── Job 3: Deploy Site
                    │
                    ▼
         Azure Static Web App
                    │
                    ▼
              Azure CDN
            (global delivery)
\`\`\`

## Services Used

| Service | Purpose | Tier |
|---|---|---|
| Azure Static Web Apps | Host the portfolio | Free |
| Azure CDN | Global content delivery | Built-in |
| GitHub Actions | CI/CD automation | Free |
| Azure Bicep | Infrastructure as Code | N/A |

## Deployment Flow
1. Developer pushes to feature branch
2. PR raised into develop
3. Develop merged into main via release PR
4. GitHub Actions triggers automatically
5. Bicep validates and provisions Azure resources
6. Site deploys to Azure Static Web Apps
7. Available globally via CDN
\`\`\`