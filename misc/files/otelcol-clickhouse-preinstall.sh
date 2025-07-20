#!/bin/sh

getent passwd otelcol-clickhouse >/dev/null || useradd --system --user-group --no-create-home --shell /sbin/nologin otelcol-clickhouse