#!/bin/bash

# docker run --rm -it -v $HOME/.aws:/root/.aws -v "$(pwd)"/src:/aws/ amazon/aws-cli --profile=long-div s3 sync .  s3://bitcru/ --acl public-read

# docker run --rm -it -v $HOME/.aws:/root/.aws -v "$(pwd)"/src:/aws/ amazon/aws-cli --profile=long-div s3 ls s3://bitcru/

docker run --rm -it -v $HOME/.aws:/root/.aws -v "$(pwd)":/aws/ amazon/aws-cli --profile=long-div --region us-east-1 lambda update-function-code \
 --function-name hello-ruby-lambda --zip-file fileb://src/function.zip