#!/bin/bash

# Kill Ports Script
# This script kills processes running on ports 5000 (backend) and 5001 (frontend)

echo "Killing processes on ports 5000 and 5001..."

# Kill port 5000 (Backend)
echo "Checking port 5000..."
fuser -n tcp -k 5000 2>/dev/null
if [ $? -eq 0 ]; then
    echo "✓ Killed process on port 5000"
else
    echo "  No process found on port 5000"
fi

# Kill port 5001 (Frontend)
echo "Checking port 5001..."
fuser -n tcp -k 5001 2>/dev/null
if [ $? -eq 0 ]; then
    echo "✓ Killed process on port 5001"
else
    echo "  No process found on port 5001"
fi

echo ""
echo "Done! Ports 5000 and 5001 are now free."
