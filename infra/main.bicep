// ============================================
// Azure Portfolio — Infrastructure as Code
// Author: Your Name
// Description: Provisions Azure Static Web App
//              for portfolio site deployment
// ============================================

// ── Parameters ──────────────────────────────
// Parameters let us reuse this template across
// different environments (dev, staging, prod)

@description('Name of the Static Web App')
param appName string = 'portfolio-swa'

@description('Azure region for deployment')
param location string = 'eastus2'

@description('Environment tag')
@allowed(['dev', 'staging', 'prod'])
param environment string = 'prod'

@description('Your GitHub repo URL')
param repositoryUrl string = 'https://github.com/YOUR_USERNAME/azure-portfolio'

@description('Branch to deploy from')
param branch string = 'main'

// ── Variables ───────────────────────────────
// Variables are computed values we reuse
// inside the template

var resourceName = '${appName}-${environment}'
var tags = {
  project: 'azure-portfolio'
  environment: environment
  managedBy: 'bicep'
  owner: 'your-name'
}

// ── Resources ───────────────────────────────

// Static Web App
// Free tier includes: hosting + SSL + CDN
resource staticWebApp 'Microsoft.Web/staticSites@2022-09-01' = {
  name: resourceName
  location: location
  tags: tags
  sku: {
    name: 'Free'      // Free tier — perfect for free trial!
    tier: 'Free'
  }
  properties: {
    repositoryUrl: repositoryUrl
    branch: branch
    buildProperties: {
      appLocation: 'src'       // Where your HTML lives
      outputLocation: 'src'    // Output folder
    }
  }
}

// ── Outputs ─────────────────────────────────
// Outputs expose values after deployment
// so we can use them in CI/CD pipelines

@description('The URL of the deployed Static Web App')
output swaUrl string = staticWebApp.properties.defaultHostname

@description('The name of the Static Web App resource')
output swaName string = staticWebApp.name

@description('The resource ID')
output swaId string = staticWebApp.id
