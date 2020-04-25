#!/bin/bash

IP=$(curl -s https://eumis2020.government.bg/bg/s/Procedure/ArchivedPublicDiscussion)
if [[ $IP == *"COVID-19"* ]]; then
  rm /tmp/procedure.txt
  echo "It's there!"
  echo "Subject: COVID-19 key found!" > /tmp/procedure.txt
  echo "Go go go!" >> /tmp/procedure.txt
  /usr/sbin/sendmail youremail@yourdomain.com < /tmp/procedure.txt
fi
if [[ $IP == *"BG16RFOP002-2.073"* ]]; then
  rm /tmp/procedure.txt
  echo "It's there!"
  echo "Subject: Procedure number found!" > /tmp/procedure.txt
  echo "Go go go!" >> /tmp/procedure.txt
  /usr/sbin/sendmail youremail@yourdomain.com < /tmp/procedure.txt
fi
