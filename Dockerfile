FROM alpine:3.21

# hadolint ignore=DL3018
RUN apk add --no-cache procps curl

# Create non-root system group and user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app
COPY sys_health.sh .
RUN chmod +x sys_health.sh

USER appuser

ENTRYPOINT ["./sys_health.sh"]
