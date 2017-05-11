# awslogs-cli
A Docker Image for the jorgebastida/awslogs utility

# Description
This is a simple wrapping of the [jorgebastida/awslogs](https://github.com/jorgebastida/awslogs) utility to install it in an Alpine Docker Image. All credit for the functionality of the tool itself belongs there.

# How To Use
Create an aws_credentials.env file in the directory where you plan to run this tool. You can either
clone this repo and build the Docker image or pull directly from Docker Hub. Add your
AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY to the file. When running the container, use the env
file to specify your environment for the container.

```sh
docker run --env-file aws_credentials.env rbhitchcock/awslogs-cli
```

For more on how you can use the awslogs utility to parse log data, please visit
[jorgebastida/awslogs](https://github.com/jorgebastida/awslogs). By default, running this image
pulls back the last hour of logs from an ```app``` log group with a stream that contains ```api```
in the name.
