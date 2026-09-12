# Use a lightweight official Alpine Linux base image (~5MB)
FROM alpine:3.19

# Install bash and procps (which provides ps and free commands)
RUN apk update && apk add --no-cache bash procps

# Set the working directory inside the container
WORKDIR /app

# Copy the monitoring script from your laptop into the container
COPY sys_health.sh /app/sys_health.sh

# Make sure the script is executable
RUN chmod +x /app/sys_health.sh

# Set the default command to execute when the container launches
CMD ["/bin/bash", "/app/sys_health.sh"]
