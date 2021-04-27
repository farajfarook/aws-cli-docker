FROM docker:latest

RUN apk add --no-cache curl jq python3 py3-pip npm zip unzip \
&& pip install awscli \
&& npm install -g typescript aws-cdk

CMD [ "tail", "-f", "/dev/null" ]
