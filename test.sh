#!/bin/bash

### Shell Script will send request to Provided URL  and it will look for HTTP_CODE  then  it will send an email if it is not 200 Success HTTP_CODE
#This is the comment am adding here

status_code=$(curl --write-out %{http_code} --silent --output /dev/null "https://safc.dunn.app/meronboard/onboard")

if [[ "$status_code" -ne 200 ]] ; then
  echo "SAFC status changed to $status_code" | mail -s "SAFC SITE STATUS CHECKER" "admin@digitsecure.com"
else
  echo " Server is Good "
fi

status_codedigit=$(curl --write-out %{http_code} --silent --output /dev/null "https://www.digitsecure.com")

if [[ "$status_codedigit" -ne 200 ]] ; then
  echo "DigitSecure status changed to $status_codedigit" | mail -s " DigitSecure SITE STATUS CHECKER" "admin@digitsecure.com"
else
  echo "Server Is Good "
fi

status_codetc33=$(curl --write-out %{http_code} --silent --output /dev/null "https://tc33.digitsecure.com/tc33/Tc33Processor")

if [[ "$status_codetc33" -ne 200 ]] ; then
  echo "TC33 status changed to $status_codetc33" | mail -s " TC33 SITE STATUS CHECKER" "admin@digitsecure.com"
else
  echo "Server Is Good "
fi


status_codeAccts=$(curl --write-out %{http_code} --silent --output /dev/null "https://accounts2.digitsecure.com")

if [[ "$status_codeAccts" -ne 200 ]] ; then
  echo "Accounts status changed to $status_codeAccts" | mail -s " Accounts SITE STATUS CHECKER" "admin@digitsecure.com"
else
  echo "Server Is Good "
fi

