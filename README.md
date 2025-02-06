# Cloudfoundry-with-aws-terraform
creating a simple "Hello World" application, deploying it via Cloud Foundry on a Kubernetes cluster provisioned using Terraform.


## Folder structure

![image](https://github.com/user-attachments/assets/142ac49f-ef71-4a64-a9bc-edad70122b61)



## Test steps

Navigate to the terraform/ directory.


1. **Initialize Terraform, Apply the Terraform configuration:**
   ```bash
   terraform init
   terraform apply

2. Save the kubeconfig output to ~/.kube/config.

3. **Build and Push the Docker Image**
   ```bash
   docker build -t your-dockerhub-username/hello-world-app:latest .
   docker push your-dockerhub-username/hello-world-app:latest


4. Deploy with Cloud Foundry
   Install the Cloud Foundry CLI (cf).

   Log in to Cloud Foundry:
   ```bash
   cf login -a https://api.your-cloud-foundry-endpoint.com

  
5. **Target your org and space:**
   ```bash
   cf target -o your-org -s your-space

6. **Deploy the app:**
   ```bash
   cf push

7. **Verify Deployment Run the test.sh script:**
   ```bash
   ./scripts/test.sh

8. **Verify the output**

    Check that the Kubernetes resources (pods, deployments, services) are created.
    Access the app via the provided URL and confirm it displays "Hello, World!".



    ## Expected Output
    Terraform provisions the EKS cluster.

    Docker image is built and pushed to the registry.

    Cloud Foundry deploys the app to Kubernetes.

    The app is accessible at the provided URL, and Kubernetes resources are verified.

    This project demonstrates a complete CI/CD pipeline using Terraform, Docker, Kubernetes, and Cloud Foundry.


  
