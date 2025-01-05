#!/bin/bash
/opt/portainer/portainer &
PORTAINER_PID=$!
sleep 5

curl -k -X POST "https://localhost:9443/api/users/admin/init" \
    -H "Content-Type: application/json" \
    -d "{
          \"Username\": \"${PORTAINER_USERNAME}\",
          \"Password\": \"${PORTAINER_PASSWORD}\"
        }"
wait $PORTAINER_PID