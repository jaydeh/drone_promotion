az login --service-principal -u "75806448-6f26-4f74-a999-64f10ff72bad" -p ${DRONE_SP_PASS}  --tenant "3fa51ec6-dc41-4086-acbc-52245ced5ffa" 
az deployment group create --mode incremental  --resource-group poc-drone --name drone-poc --template-file "./Data Factory/arm_template.json"  --parameters "/drone/src/Data Factory/arm_template_parameters.json"
#az group create --resource-group poc-drone --location westus
