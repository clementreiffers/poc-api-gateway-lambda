LAMBDA_DIRECTORY=./terraform

TERRAFORM_CMD=terraform -chdir=${LAMBDA_DIRECTORY}

init:
	${TERRAFORM_CMD} init

deploy:
	${TERRAFORM_CMD} apply -auto-approve