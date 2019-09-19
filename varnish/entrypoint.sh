#!/usr/bin/env bash
set -euo pipefail

host_replace_expression=".host = \".+\"/.host = \"${VARNISH_BACKEND_HOST}\""
port_replace_expression=".port = \".+\"/.port = \"${VARNISH_BACKEND_PORT}\""
perl -pi -e "s/${host_replace_expression}/g; s/${port_replace_expression}/g" /etc/varnish/default.vcl

varnishd \
    -a ":${VARNISH_LISTENING_PORT}" \
    -T ":${VARNISH_ADMIN_PORT}" \
    -f "/etc/varnish/default.vcl" \
    -S "/etc/varnish/secret" \
    -s "malloc,512m" \
    -p "feature=+esi_disable_xml_check" -p "vcc_allow_inline_c=on" -p "cli_buffer=32768" \
    -F
