# docker-neo4j-haproxy

#### Instructions For Use

Just simply run:

`docker run -ti -e AUTH=<user:pass> -e proxy='proxy1;proxy2;proxy3' quay.io/ukhomeofficedigital/neo4j-haproxy:v0.0.1`

####Environment Variables

AUTH :- Either the colon delineated pair like this: `user:pass` or a base64 encoded string like this: `dXNlcjpwYXNz`

PROXY :- Submit a full semicolon delineated string like this: `neo4j-1:7474;neo4j-2:7474;neo4j-3:7474`
