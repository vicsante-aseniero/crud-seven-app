#!/bin/bash

# Frontend Development Script
# This script runs the React + Vite frontend in development mode

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Get the project root (parent of .scripts)
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "Starting Frontend Development Server..."
cd "$PROJECT_ROOT/ui" && npm run dev
