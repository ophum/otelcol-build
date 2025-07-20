#!/bin/sh

getent passwd otelcol-agent >/dev/null || useradd --system --user-group --no-create-home --shell /sbin/nologin otelcol-agent