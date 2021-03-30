FROM docker:latest

RUN apk add --no-cache curl jq python3 py3-pip npm \
&& pip install awscli \
&& npm install -g typescript aws-cdk

CMD [ "tail", "-f", "/dev/null" ]