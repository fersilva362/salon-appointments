#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
#display a numbered list of the services 
SERVICES_OFFERED=$($PSQL "SELECT service_id, name FROM services;")
MAIN_MENU () {
echo -e "\nchoose your service:"
echo "$SERVICES_OFFERED" | while read SERVICE_N BAR NAME
do
echo "$SERVICE_N) $NAME"
done
echo -e "\nEnter a number to choose:"
read SERVICE_ID_SELECTED

#service id and nombre
SERVICE_ID=$($PSQL"SELECT service_id FROM services WHERE service_id = $SERVICE_ID_SELECTED;")

#if no such service were found
if [[ -z $SERVICE_ID ]]
then
# return list of the services
  MAIN_MENU

else
SERVICE_NAME=$($PSQL"SELECT name FROM services WHERE service_id = $SERVICE_ID")

#if the service is true  

  echo -e "\nWhat 's your phone number?"
  read CUSTOMER_PHONE
  #busco el nombre
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  #if not name exists
  if [[ -z $CUSTOMER_NAME ]]
    then
    #ASK FOR THE NAME
    echo -e "\nWhat 's your name?"
    read CUSTOMER_NAME
    #add customers using name & phone 
    INSERT_DATA_CUSTOMER=$($PSQL"INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
    echo "$INSERT_DATA_CUSTOMER data_customer"
    
   fi 
  #time
  echo -e "\nWhen do you plan tou use it?"
  read SERVICE_TIME
  ## apointmen time(appoint)  (customerid) service_id (servicio)
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE' ")

  echo $SERVICE_ID,$CUSTOMER_ID,$SERVICE_TIME
  INSERT_APPOINMENT=$($PSQL"INSERT INTO appointments(service_id, customer_id, time) VALUES($SERVICE_ID,$CUSTOMER_ID,'$SERVICE_TIME');")
  if [[ $INSERT_APPOINMENT == 'INSERT 0 1' ]]
  then
  echo -e "I have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
  fi
  }
  MAIN_MENU