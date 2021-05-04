#!/bin/bash

# docker run --rm -it -v $HOME/.aws:/root/.aws -v "$(pwd)"/src:/aws/ amazon/aws-cli --profile=long-div s3 sync .  s3://bitcru/ --acl public-read

docker run --rm -it -v $HOME/.aws:/root/.aws -v "$(pwd)"/src:/aws/ amazon/aws-cli --profile=long-div s3 ls s3://bitcru/