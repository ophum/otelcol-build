#!/bin/sh

if command -v systemctl >/dev/null 2>&1; then
    if [ -d /run/systemd/system ]; then
        systemctl daemon-reload
    fi
    systemctl enable otelcol-clickhouse.service
    if [ -f /etc/otelcol-clickhouse/config.yaml ]; then
        if [ -d /run/systemd/system ]; then
            systemctl restart otelcol-clickhouse.service
        fi
    fi
fi