#!/bin/bash

# Full Stack Development Script
# This script runs both the frontend and backend in development mode concurrently

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Get the project root (parent of .scripts)
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "Starting Full Stack Development Environment..."
echo "Backend will run on its configured port"
echo "Frontend will run on its configured port (usually http://localhost:5173)"
echo ""
echo "Press Ctrl+C to stop both servers"
echo ""

# Run both backend and frontend in parallel
# The & sends the backend to background, and wait ensures both are running
cd "$PROJECT_ROOT/app" && npx tsx watch src/index.ts &
BACKEND_PID=$!

cd "$PROJECT_ROOT/ui" && npm run dev &
FRONTEND_PID=$!

# Handle Ctrl+C to kill both processes
trap "echo 'Stopping servers...'; kill $BACKEND_PID $FRONTEND_PID 2>/dev/null; exit" INT TERM

# Wait for both processes
wait

