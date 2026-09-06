

echo "         SERVER MONITORING REPORT           "

echo "=========================="
echo " Data :$(date)"
echo "User : $(whoami)"
echo "Working : $(pwd)"

disk_usuage=$(df -h / | awk 'NR == 2 {print $5}' | tr -d '%')
echo "disk_usuage: $disk_usuage"
if [ "$disk_usuage" -ge 80 ];
then
     echo "Disk Status : WARNING"
else
     echo "Disk Status : NORMAL"
fi

if docker ps | grep -q "devops-web-app-container";
then
    echo "Docker Application Status: RUNNING"
else
    echo "Docker Application Status: STOPPED"
fi

memory_usage=$(free -m | awk 'NR==2 {print $3}')
echo "Memory Usage: ${memory_usage} MB"


echo "=========================="
