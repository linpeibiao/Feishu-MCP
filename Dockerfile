FROM node:20-slim

WORKDIR /app

ENV FEISHU_APP_ID=your_app_id
ENV FEISHU_APP_SECRET=your_app_secret

CMD npx -y feishu-mcp@latest --feishu-app-id=$FEISHU_APP_ID --feishu-app-secret=$FEISHU_APP_SECRET --stdio