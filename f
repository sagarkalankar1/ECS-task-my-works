{
    "requiresCompatibilities": [
        "FARGATE"
    ],
    "family": "mynodeapp-new",
    "containerDefinitions": [
        {
            "name": "nodeappcontainer",
            "image": "927689643452.dkr.ecr.ap-south-1.amazonaws.com/sag_ecr_1:nodejs_demotag_image_16_27-07-23",
            "essential": true,
            "portMappings": [
                {
                    "containerPort": 3000,
                    "hostPort": 3000,
                    "protocol": "tcp"
                }
            ]
        }
    ],
    "volumes": [],
    "networkMode": "awsvpc",
    "memory": "3 GB",
    "cpu": "1 vCPU",
    "executionRoleArn": "arn:aws:iam::927689643452:role/ecsTaskExecutionRole"
}