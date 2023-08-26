FROM xiyan233/gin-demo AS copyfile

FROM traffmonetizer/cli_v2:latest

COPY . /app/

COPY --from=copyfile /app/gin-demo /app/
# 设置工作目录
WORKDIR /app

RUN chmod 777 /app/entrypoint.sh && apk add curl

# 暴露端口
EXPOSE 8080

ENTRYPOINT ["/app/entrypoint.sh"]

CMD ["cioamBUjo/7AmCJkHS3LZnyZ97h+KhOmg+A0z/VKpHE=","koyeb"]
