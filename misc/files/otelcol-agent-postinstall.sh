#!/bin/sh

if command -v systemctl >/dev/null 2>&1; then
    if [ -d /run/systemd/system ]; then
        systemctl daemon-reload
    fi
    systemctl enable otelcol-agent.service
    if [ -f /etc/otelcol-agent/config.yaml ]; then
        if [ -d /run/systemd/system ]; then
            systemctl restart otelcol-agent.service
        fi
    fi
fi