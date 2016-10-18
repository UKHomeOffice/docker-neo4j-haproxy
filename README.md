# docker-neo4j-haproxy

## Instructions For Use

Just simply run:

`docker run -ti -e AUTH=<user:pass> -e proxy='proxy1;proxy2;proxy3' quay.io/ukhomeofficedigital/neo4j-haproxy:v0.0.1`

##Environment Variables

AUTH :- Either the colon delineated pair like this: `user:pass` or a base64 encoded string like this: `dXNlcjpwYXNz`

PROXY :- Submit a full semicolon delineated string like this: `neo4j-1:7474;neo4j-2:7474;neo4j-3:7474`

## Acknowledgements

Most of the hard work was already done by Stefan Armbruster in his blog post here: http://blog.armbruster-it.de/2015/08/neo4j-and-haproxy-some-best-practices-and-tricks/

## Find Us

* [GitHub](https://github.com/UKHomeOffice/docker-neo4j-haproxy)
* [Quay.io](https://quay.io/repository/ukhomeofficedigital/nginx-proxy)

## Contributing

Feel free to submit pull requests and issues. If it's a particularly large PR, you may wish to 
discuss it in an issue first.

Please note that this project is released with a [Contributor Code of Conduct](CONTRIBUTING.md). 
By participating in this project you agree to abide by its terms.

## Versioning

We use [SemVer](http://semver.org/) for the version tags available See the tags on this repository. 

## Authors

* **Giles Hinchcliff** - *Initial work* - [gileshinchcliff](https://github.com/gileshinchcliff)

See also the list of 
[contributors](https://github.com/UKHomeOffice/docker-nginx-proxy/graphs/contributors) who 
participated in this project.
