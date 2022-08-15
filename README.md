# nasa-poc
step1 
aws ecr create-repository \
    --repository-name MY_ECR_REPOSITORY \
    --region MY_AWS_REGION

step2
aws ecs register-task-definition --generate-cli-skeleton
