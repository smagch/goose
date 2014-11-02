# [goose] Docker image with [godep] vendoring


## Example

fig.yml

```yml
db:
  image: postgres:9.3.5
goose:
  image: smagch/goose:latest
  command: -env=development up
  working_dir: /go
  volumes:
    - db:/go/db
  links:
    - db
```

As you can see above `working_dir` and `volumes` options, you need to mount a
`./db` directory to your working directory.


db/dbconf.yml

```yml
development:
    driver: postgres
    open: user=postgres dbname=postgres host=$DB_PORT_5432_TCP_ADDR port=$DB_PORT_5432_TCP_PORT sslmode=disable
```

You'll be able to provision your postgres container with the following command.

```bash
$ fig run goose
```

[goose]: https://bitbucket.org/liamstask/goose
[godep]: https://github.com/tools/godep
