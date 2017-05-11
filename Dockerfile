FROM alpine:3.5

ENV VERSION=0.0.1
ENV AWS_REGION=us-east-2

RUN apk add --no-cache py-pip
RUN pip install awslogs

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["get", "app", ".*norad_api.*", "-s1h"]
