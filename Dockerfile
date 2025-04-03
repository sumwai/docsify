FROM node:16-alpine

WORKDIR /app

# 安装 docsify-cli
RUN npm install -g docsify-cli

# 复制文档文件
COPY . .

# 暴露端口
EXPOSE 3000

# 启动服务
CMD ["docsify", "serve", "."] 