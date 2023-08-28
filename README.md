# Cloudflare-Dynamic-DNS
Bash script to update Dynamic IP for Cloudflare. The script is written to be use on any platform that can run bash script. However, the action_Cloudflare_DDNS.conf is written specifically for OPNSense Custom Cron Job

# Step-by-Step Instruction:
https://sysadmin102.com/2023/08/opnsense-dynamic-dns-with-cloudflare-using-a-custom-cron-job/
    
# Set the below parameters for Update_Cloudflare_Dynamic_IP.sh:
TOKEN="Replace with API Token";
ZONE_ID="Replace with Zone ID";
DNS_ID="Replace with DNS ID";
TYPE="A";
NAME="Replace with DNS Record Name";

API Toekn: https://developers.cloudflare.com/fundamentals/api/get-started/create-token/

Zone ID: https://developers.cloudflare.com/fundamentals/get-started/basic-tasks/find-account-and-zone-ids/

DNS ID: Get DNS Record ID by executing the Get_DNS_ID.sh in Terminal/Command Prompt

# actions_Cloudflare_DDNS.conf is a custom Cron Job for OPNSense. 

Use the curl command to clone the actions_Cloudflare_DDNS.conf to your local folder

cd /usr/local/opnsense/service/conf/actions.d
curl -LJO https://raw.githubusercontent.com/nn0x96a/Cloudflare-Dynamic-DNS/main/actions_Cloudflare_DDNS.conf

service configd restart

# Credit: special thanks to Steve@Tech Otaku for the API scripts.

Original scripts: https://www.tech-otaku.com/web-development/using-cloudflare-api-manage-dns-records/#435
