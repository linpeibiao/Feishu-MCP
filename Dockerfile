FROM node:20-slim

WORKDIR /app

# 如果有 package.json 可以先 COPY 并 npm install
# 否则直接用 npx 运行

# 推荐将参数通过环境变量传递，避免写死密钥
ENV FEISHU_APP_ID=your_app_id
ENV FEISHU_APP_SECRET=your_app_secret

# 启动命令
CMD ["npx", "-y", "feishu-mcp@latest", "--feishu-app-id", "$FEISHU_APP_ID", "--feishu-app-secret", "$FEISHU_APP_SECRET"]