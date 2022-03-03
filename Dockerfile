FROM node:8-jessie-slim

EXPOSE 4200

RUN mkdir -p /var/app
WORKDIR /var/app

ADD . .

# Build the app
RUN wget https://codejudge-starter-repo-artifacts.s3.ap-south-1.amazonaws.com/web-micro-project/javascript/common/build.sh
RUN chmod 775 ./build.sh
RUN ./build.sh

# Add extra docker commands here (if any)...

# Run the app
RUN wget https://codejudge-starter-repo-artifacts.s3.ap-south-1.amazonaws.com/web-micro-project/javascript/common/run.sh
RUN chmod 775 ./run.sh
CMD ./run.sh