#!/bin/bash
echo "🚀 Starting LumiCode..."
docker-compose up -d redis
cd backend && uvicorn main:app --reload --port 8000 &
cd ../mcp-server && npm run build && npm start &

echo "✅ All services started!"
echo "Backend: http://localhost:8000"
echo "Redis: localhost:6379"
