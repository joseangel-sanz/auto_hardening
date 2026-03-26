#!/bin/bash

# List of URLs to check
echo "Checking the List of URLs"
urls=(
"https://registry.k8s.io"
"https://dl.k8s.io"
"https://harbor.maersk.io"
"https://apmtregistry.azurecr.io"
"https://quay.io"
"https://ftp.gwdg.de"
"https://europe-west4-docker.pkg.dev"
"https://telemetry.pensieve.maersk-digital.net"
"https://api.hedwig.maersk-digital.net"
"https://goalert.hedwig.maersk.io"
"https://maersk.webhook.office.com"
"https://sts.windows.net"
"https://login.microsoftonline.com"
"https://login.windows.net"
"https://graph.microsoft.com"
"https://github.com"
"https://ssh.github.com"
"https://raw.githubusercontent.com"
"https://psrc-dozoy.westeurope.azure.confluent.cloud"
"https://packages.cloud.google.com"
"https://hub.apmthybridcloud.net"
"https://download.opensuse.org"        
"https://opensuse.mirror.liquidtelecom.com"
"https://subscription.rhn.redhat.com"       
"https://subscription.rhsm.redhat.com"      
"https://cdn.redhat.com"     
"https://akamaiedge.net"                  
"https://akamaitechnologies.com"
"https://qagpublic.qg1.apps.qualys.eu"
"https://ts01-b.cloudsink.net"              
"https://lfodown01-b.cloudsink.net"         
"https://trendmicro.com"
"https://psrc-dozoy.westeurope.azure.confluent.cloud:443"
"https://pkc-8v2p7.westeurope.azure.confluent.cloud:9092"
"https://b0-pkc-8v2p7.westeurope.azure.confluent.cloud:9092"
"https://b1-pkc-8v2p7.westeurope.azure.confluent.cloud:9092"
"https://b2-pkc-8v2p7.westeurope.azure.confluent.cloud:9092"
"https://b3-pkc-8v2p7.westeurope.azure.confluent.cloud:9092"
"https://b4-pkc-8v2p7.westeurope.azure.confluent.cloud:9092"
"https://b5-pkc-8v2p7.westeurope.azure.confluent.cloud:9092"
"https://b6-pkc-8v2p7.westeurope.azure.confluent.cloud:9092"
"https://b7-pkc-8v2p7.westeurope.azure.confluent.cloud:9092"
"https://b8-pkc-8v2p7.westeurope.azure.confluent.cloud:9092"
)
# Output file
#output_file="connectivity_check.txt"

#Function to perform the connectivity check
check_connectivity() {
url="$1"
echo "Checking connectivity to $url..."
if curl -s -k --head "$url" >/dev/null; then
echo "$url is reachable"
else
echo "$url is unreachable"
fi
echo ""
}

#Loop through the URLs and perform the connectivity check
for url in "${urls[@]}"; do
check_connectivity "$url" >> "$output_file"
done
echo "" >> "$output_file"
echo "--------End of the connectivity checks----------" >> "$output_file"
echo "Connectivity check complete. Results saved to $output_file"