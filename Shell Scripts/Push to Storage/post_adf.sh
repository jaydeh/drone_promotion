##Install all neded extenions
apt-get update -y
apt-get upgrade -y
apt-get install zip unzip -y

##Zip Template
zip -r ${DRONE_TAG}.zip ./"Data Factory"/*

##Login and Push to file Storage
az login --service-principal -u "75806448-6f26-4f74-a999-64f10ff72bad" -p ${DRONE_SP_PASS}  --tenant "3fa51ec6-dc41-4086-acbc-52245ced5ffa" 
az storage file upload --account-name stgdrone --account-key ${DEV_STG_ACC_KEY} --share-name drone-poc --path "Archive" --source ${DRONE_TAG}.zip
