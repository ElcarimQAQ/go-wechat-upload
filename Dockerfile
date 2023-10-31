FROM golang:latest
LABEL authors="ElcarimQAQ"

ENV GOPROXY https://goproxy.cn,direct

# 移动到工作目录：/build
WORKDIR /build
# 将代码复制到容器中
COPY . .
RUN go build  .

# 声明服务端口
EXPOSE 8888
ENTRYPOINT ["./go-wechat-upload"]