# Step 1: Use  Ubuntu image
FROM ubuntu:25.10

# Step 2: Add necessary binaries
RUN apt update -y && apt install -y vim python3

# Step 3: Set the working directory inside the container
WORKDIR /home/labDirectory

# Step 4: Create home directory and all the folders inside it
RUN mkdir /home/.evaluationScripts

# Step 5: Setup the directories
CMD [ "/bin/bash", "-c", "bash /home/.evaluationScripts/.bodhiFiles/init.sh; while :; do sleep 10; done" ]
