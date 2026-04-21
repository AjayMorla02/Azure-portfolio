# Azure-portfolio
![Deploy to Azure](https://github.com/YOUR_USERNAME/azure-portfolio/actions/workflows/deploy.yml/badge.svg)
# 🌐 Azure Portfolio Website

A personal portfolio website hosted on **Azure Static Web Apps** with
global delivery via **Azure CDN**.

Built following professional cloud engineering workflows including
Infrastructure as Code, CI/CD pipelines, and GitHub Flow branching strategy.

## 🏗️ Architecture

| Service | Purpose |
|---|---|
| Azure Static Web Apps | Host the frontend |
| Azure Blob Storage | Store static assets |
| Azure CDN | Global content delivery |
| GitHub Actions | CI/CD pipeline |
| Azure Bicep | Infrastructure as Code |

## 📁 Folder Structure

\`\`\`
azure-portfolio/
├── .github/
│   └── workflows/        ← GitHub Actions CI/CD
├── infra/
│   └── main.bicep        ← Azure infrastructure
├── src/                  ← Portfolio website source
├── docs/
│   └── architecture.md   ← Diagrams & decisions
├── .env.example          ← Environment variable template
└── README.md
\`\`\`

## 🚀 Deployment

Automatically deployed to Azure Static Web Apps on every merge to \`main\`.

## 🛠️ Local Development

\`\`\`bash
# Clone the repo
git clone https://github.com/YOUR_USERNAME/azure-portfolio.git

# Open src/ folder and launch with Live Server
\`\`\`

## 📌 Project Status
🟡 In Progress — Phase 1: Repo Setup

## 📌 Project Status
🟢 Live — Deployed via GitHub Actions CI/CD