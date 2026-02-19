#!/bin/bash
echo "🔧 Setting up LumiCode..."

cd backend
uv venv venv
source venv/bin/activate
uv pip install -r requirements.txt

cd ../mcp-server
bun install

cp .env.example .env
cd ../backend
cp .env.example .env

echo "✅ Setup complete! Edit .env files with your API keys"
echo "Run './scripts/start-dev.sh' to start all services"
