### Analyze, choose, and justify the appropriate resource option for deploying the app

#### Analyzing VMs vs App Service

**Virtual Machines (VMs):**
- **Cost:** Higher cost due to management of infrastructure, OS updates, and monitoring needs. More upfront complexity in setup, though flexible in customization.  
- **Scalability:** Manual configuration is required. Auto-scaling with Virtual Machine Scale Sets (VMSS) or Load Balancers is possible, but setup is more complex.  
- **Availability:** Provides redundancy and high availability when configured correctly, though the developer manages much of this.  
- **Workflow:** Requires more developer and admin effort. Custom images and full control are powerful, but time-consuming. Better suited for apps with OS-level dependencies.  

**App Service:**
- **Cost:** Lower cost of ownership since infrastructure management is abstracted. Pay-as-you-go scaling aligned with pricing tiers. Offers a free Dev/Test tier for early development.  
- **Scalability:** Built-in vertical and horizontal scaling with simple configuration in the Azure Portal. Automatic without the need for load balancer setup.  
- **Availability:** Managed by Azure with high uptime guarantees. Built-in redundancy supports business continuity.  
- **Workflow:** Streamlined with options like CI/CD deployment from GitHub or Azure DevOps. Developers can focus purely on the app code instead of infrastructure. Supports multiple programming languages out of the box.  

#### Choosing the Appropriate Solution

For this CMS web application, **Azure App Service** is the more appropriate choice for deployment.  

#### Justification for App Service

- **Cost efficiency:** The App Service removes the overhead of managing and patching infrastructure. The F1(Free) tier provide flexibility during development/testing, scaling up later only when required.  
- **Scalability:** Simple auto-scale features support varying workloads without complex configuration. This is ideal since a CMS typically has variable usage but should remain responsive.  
- **Availability:** High uptime and built-in redundancy mean the app is production-ready without additional setup by the developer. We use Read-Access Geo-Redundant Storage (RA-GRS) .
- **Workflow:** App Service integrates seamlessly with modern development pipelines (e.g., GitHub Actions, Azure Pipelines). Continuous deployment makes releases easier and faster for a CMS app that might require frequent updates.  

Compared to VMs, the App Service approach significantly reduces operational burden, speeds up deployment, increases agility, and maintains cost control. **App service is the suitable choice for a lightweight CRUD Application like this.**

***

### Assess App Changes That Would Change the Decision

The preference might shift to **Virtual Machines** instead of App Service under the following conditions:  
- **Custom OS Configurations:** If the CMS app required low-level adjustments to the operating system, specialized middleware, or third-party software not supported in App Service.  
- **High-performance Workloads:** If the CMS incorporated compute-intensive tasks (e.g., heavy data processing, video encoding, or specialized GPU usage) that exceeded App Service capabilities.  
- **Strict Compliance/Isolation Requirements:** In scenarios where regulatory compliance mandated isolated infrastructure or custom security controls, dedicated VMs or an isolated environment would be required.  
- **Lift-and-Shift Migration:** If the CMS was tightly coupled to existing on-premises VMs with complex dependencies, moving directly to VMs in Azure would be simpler than refactoring for App Service.  

Unless these requirements emerge, **Azure App Service remains the optimal choice** due to its lower costs, simplicity, integrated scaling, and faster developer workflows.  
