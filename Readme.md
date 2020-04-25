# isun2020 Scrapper and Notifier
A Bash script that will connect to the isun2020, parse the output in a BASH variable, and check whether a specific project is published / opened for submissions.
* The script checks for a project ID in the returned data
* The script checks for a specific keyword in the returned data 
### Installation
* Edit eumis.sh and add your email address for notification and add the project ID and or a keyword contained in the project name
* Copy eumis.sh to /bin
* Chmod +x /bin/eumis.sh
* Create a new cron job with crontab -e and add */5 * * * * /bin/eumis.sh (this will execute the script every 5 minutes and if the project is published it will notify you via the email address added in the script)