#!/bin/bash
echo "Starting redis-server..."
redis-server --protected-mode no > /dev/null 2>&1
