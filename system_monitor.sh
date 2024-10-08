#!/bin/bash

# Define thresholds
CPU_THRESHOLD=50
MEMORY_THRESHOLD=50
DISK_THRESHOLD=50

# Email settings
EMAIL="perrykeisha819@gmail.com"
SUBJECT="System Resource Alert"
EMAIL_BODY="/tmp/email_body.txt"

# Get CPU usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
echo "Current CPU usage: ${CPU_USAGE}%"

# Get memory usage
MEMORY_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
echo "Current memory usage: ${MEMORY_USAGE}%"

# Get disk usage for root directory
DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
echo "Current disk usage: ${DISK_USAGE}%"

# Function to send an alert email
send_alert() {
    echo "Subject: $SUBJECT" > $EMAIL_BODY
    echo " " >> $EMAIL_BODY
    echo "$1" >> $EMAIL_BODY #the argument 1 that is appended to the email body is like the argument passed in the if statement remember we call the send_alert function and then pass the agrument warning; CPU usage is at $cpu usage.that will be the argument 1 appended to the email body!
    mail -s "$SUBJECT" "$EMAIL" < $EMAIL_BODY
    #mail command sends the email. The -s "$SUBJECT" option specifies the subject line, and $EMAIL is the recipient's email address. The < $EMAIL_BODY  reads the contents of the $EMAIL_BODY file and sends it as the email body.
}

# Check CPU usage
if (( $(echo "$CPU_USAGE > $CPU_THRESHOLD" | bc -l) )); then
    send_alert "Warning: CPU usage is at ${CPU_USAGE}%"
    echo "CPU usage crossed the threshold!"
fi

# Check memory usage
if (( $(echo "$MEMORY_USAGE > $MEMORY_THRESHOLD" | bc -l) )); then
    send_alert "Warning: Memory usage is at ${MEMORY_USAGE}%"
    echo "Memory usage crossed the threshold!"
fi

# Check disk usage
if (( DISK_USAGE > DISK_THRESHOLD )); then
    send_alert "Warning: Disk usage is at ${DISK_USAGE}%"
    echo "Disk usage crossed the threshold!"
fi

# Clean up
rm -f $EMAIL_BODY
