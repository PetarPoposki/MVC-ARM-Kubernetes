# Introduction 
Code to deploy your web app with SQL Database to Azure Kubernetes Service.

This Repo contains 2 main folders. 

One is ProjectARM, in which the ARM Template and Parameters are described, which will deploy our resources to Azure using IaC paradigms.

The other is RSWEBProject, which contains the source code for our application.

# Getting Started
1.	Clone the repo.
2.	Push to Azure DevOps repos.
3.	Deploy the ARM template using Powershell (5.1 or higher), Azure CLI or Azure DevOps pipeline.
4.	Create a "Deploy to Kubernetes Service Pipeline on Azure DevOps". For this step, you need the azure-pipelines.yml to build and push your image to Azure Container Registry. This step requires the Dockerfile. Then, you need the deployment.yml and service.yml to deploy your image to a Kubernetes node.
5.	Run the pipeline.
6.	App is deployed.
