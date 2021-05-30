FROM alpine

RUN apk update \
    # 安装 nginx
    apk add --no-cache nginx \
    mkdir /run/nginx && \
    # 清除缓存
    rm -rf /tmp/* /var/cache/apk/*
    
# 添加容器启动命令，启动 nginx，以前台方式运行
CMD [ "nginx", "-g", "daemon off;" ]