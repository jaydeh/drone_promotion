DB=db.adf
echo $DB
if [[ $DB = *"db"* ]]; then echo "deploying db"; else echo "exiting";exit 0; fi;
