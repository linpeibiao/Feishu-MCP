# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
FROM node:lts-alpine

# Install pnpm
RUN npm install -g pnpm

# Set working directory
WORKDIR /app

# Copy dependency definitions
COPY package.json pnpm-lock.yaml ./

# Install dependencies
RUN pnpm install --frozen-lockfile --ignore-scripts

# Copy the rest of the source code
COPY . .

# Build the project
RUN pnpm run build

# Expose the port (default 3333)
EXPOSE 3333

# Run the MCP server in stdio mode to produce JSON RPC output
CMD [ "node", "dist/index.js", "--stdio" ]
