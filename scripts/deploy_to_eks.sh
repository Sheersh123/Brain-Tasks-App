@"
#!/bin/bash
set -e

echo "Configuring kubectl for EKS..."
aws eks update-kubeconfig --region us-east-2 --name demo-eks

echo "Deploying to EKS..."
kubectl apply -f /opt/Brain-Tasks-App/scripts

echo "Checking deployment status..."
kubectl get pods -n default
kubectl get svc -n default

echo "Deployment complete!"
"@ | Out-File -FilePath scripts/deploy_to_eks.sh -Encoding utf8