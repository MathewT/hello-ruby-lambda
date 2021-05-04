# hello-ruby-lambda

## bundle

```bash
docker run --rm -ti -v "$(pwd)":/home/app -w /home/app -e LANG=C.UTF-8 smathewthomas/ruby2.7.3:2.7.3-alpine3.13  bundle install --path vendor/bundle
```

## create zip package

```bash
zip -r function.zip function.rb vendor/
```
