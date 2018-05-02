#!/bin/bash

if [ "$(uname)" = "Darwin" ]; then
  open=open
else
  open=xdg-open
fi
curl -s "${JENKINS_URL}/api/json" | jq -r '.jobs[].name' |
awk -v url="${JENKINS_URL}/job/" '{print url $0}' |
fzf | xargs $open > /dev/null 2> /dev/null

