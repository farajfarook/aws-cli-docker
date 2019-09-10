FROM amazonlinux

#args
ENV AWS_KEY_ID=XXX
ENV AWS_SECRET=YYY
ENV AWS_REGION=ap-southeast-2

#required packages
#RUN rm -rf /etc/yum.repos.d/nodesource-el* \
#    && curl -sL https://rpm.nodesource.com/setup_10.x | bash - \
#    && yum install -y nodejs --enablerepo=nodesource \
#    && yum install -y aws-cli \
#    && npm install -g aws-cdk

#configure
RUN mkdir -p ~/.aws
RUN echo $'[default] \n\
    aws_access_key_id = ${AWS_KEY_ID} \n\
    aws_secret_access_key = ${AWS_SECRET}' > ~/.aws/credentials
RUN echo $'[default] \n\
    region = ${AWS_REGION}' > ~/.aws/config

CMD [ "tail", "-f", "/dev/null" ]