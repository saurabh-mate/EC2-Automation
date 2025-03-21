#!/bin/bash
terraform init
terraform apply -auto-approve
INSTANCE_IP=$(terraform output -raw instance_public_ip)

while ! ssh -o ConnectTimeout=5 -o StrictHostKeyChecking=no -i /home/saurabh/Downloads/tf-key.pem ubuntu@$INSTANCE_IP exit; do   
  echo "Waiting for SSH..."
  sleep 5
done

ansible-playbook -i ansible/inventory.ini ansible/playbook.yml

ssh -o StrictHostKeyChecking=no -i /home/saurabh/Downloads/tf-key.pem ubuntu@$INSTANCE_IP <<EOF
    
     docker run -d -p 80:80 --name portfolio-container saurabhmate/portfolio:latest

    echo "Portfolio is now running at: http://$INSTANCE_IP"
EOF

echo "Deployment completed successfully!"
echo "Access your portfolio at: http://$INSTANCE_IP"
echo "Access your portfolio at: http://saurabh.purvesh.cloud"