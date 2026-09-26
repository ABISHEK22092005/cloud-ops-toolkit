FROM alpine:3.19

# Install tools
RUN apk add --no-cache procps curl

# 1. Create a dedicated non-root group and user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app
COPY sys_health.sh .
RUN chmod +x sys_health.sh

# 2. Switch to the non-root user (no more root privileges)
USER appuser

ENTRYPOINT ["./sys_health.sh"]
