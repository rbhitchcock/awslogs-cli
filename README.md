# awslogs-cli
A Docker Image for the jorgebastida/awslogs utility

# Description
This is a simple wrapping of the [jorgebastida/awslogs](https://github.com/jorgebastida/awslogs) utility to install it in an Alpine Docker Image. All credit for the functionality of the tool itself belongs there.

# How To Use
```sh
docker run --env-file aws_credentials.env rbhitchcock/awslogs-cli
```
