#!/bin/bash

# Backend Development Script
# This script runs the Express.js backend in development mode with ts-node-dev

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Get the project root (parent of .scripts)
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "Starting Backend Development Server..."
cd "$PROJECT_ROOT/app" && npx tsx watch src/index.ts
