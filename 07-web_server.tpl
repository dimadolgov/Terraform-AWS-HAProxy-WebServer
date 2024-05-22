#!/bin/bash
sudo yum update -y
sudo yum install httpd -y

# Start Apache service
sudo systemctl start httpd

sudo systemctl enable httpd
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload
sudo chmod 777 /var/www/html

# Wait for 30 seconds
sleep 30

# Get external IP address
external_ip=$(curl http://checkip.amazonaws.com)
# Get internal IP address
internal_ip=$(cloud-init query ds.meta_data.local-ipv4)
# Create HTML file with external IP address
cat <<EOF > /var/www/html/index.html
<html>
<h2>Build by Terraform 3</h2>
<p>Internal IP address: $internal_ip</p>
<p>External IP address: $external_ip</p>
</html>
EOF




