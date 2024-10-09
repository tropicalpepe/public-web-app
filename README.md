docker pg logs:
```
PostgreSQL Database directory appears to contain a database; Skipping initialization

2024-10-09 10:29:39.312 UTC [1] LOG:  starting PostgreSQL 14.13 (Debian 14.13-1.pgdg120+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 12.2.0-14) 12.2.0, 64-bit
2024-10-09 10:29:39.313 UTC [1] LOG:  listening on IPv4 address "0.0.0.0", port 5432
2024-10-09 10:29:39.313 UTC [1] LOG:  listening on IPv6 address "::", port 5432
2024-10-09 10:29:39.324 UTC [1] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
2024-10-09 10:29:39.336 UTC [26] LOG:  database system was shut down at 2024-10-09 10:03:47 UTC
2024-10-09 10:29:39.357 UTC [1] LOG:  database system is ready to accept connections
```

docker proxy logs:
```
{"time":"2024-10-09T10:30:29.191274181Z","level":"INFO","msg":"Restored saved state","path":"/home/kamal-proxy/.config/kamal-proxy/kamal-proxy.state"}
{"time":"2024-10-09T10:30:29.192738699Z","level":"INFO","msg":"Server started","http":80,"https":443}
{"time":"2024-10-09T10:30:31.575995138Z","level":"INFO","msg":"Deploying","service":"web-app-web","hosts":["myhost.com"],"target":"cfb911559710:3000","tls":true}
{"time":"2024-10-09T10:30:31.58520699Z","level":"INFO","msg":"Healthcheck failed","error":"Get \"http://cfb911559710:3000/up\": dial tcp 172.18.0.4:3000: connect: connection refused"}
{"time":"2024-10-09T10:30:31.585420966Z","level":"INFO","msg":"Target health updated","target":"cfb911559710:3000","success":false,"state":"adding"}
{"time":"2024-10-09T10:31:01.577328313Z","level":"INFO","msg":"Target failed to become healthy","hosts":["myhost.com"],"target":"cfb911559710:3000"}
{"time":"2024-10-09T10:31:01.578612572Z","level":"INFO","msg":"Healthcheck failed","error":"Get \"http://cfb911559710:3000/up\": dial tcp 172.18.0.4:3000: connect: connection refused"}
{"time":"2024-10-09T10:31:01.578757812Z","level":"INFO","msg":"Target health updated","target":"cfb911559710:3000","success":false,"state":"adding"}
```
docker logs for the exited container do not show anything.
