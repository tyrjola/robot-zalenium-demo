#!/bin/bash

set -ue

host="$1"
output_match="$2"
shift
shift
cmd="$@"

>&2 echo "wait-for-url.sh: checking status of URL ${host}"

until curl -s "${host}" | grep "${output_match}" 2>&1 > /dev/null; do
    >&2 echo "wait-for-url.sh: waiting for URL ${host}"
    sleep 1
done

${cmd}
