require 'logger'
require 'json'
require 'aws-sdk-lambda'
require './lib/env_info.rb'
$client = Aws::Lambda::Client.new()

require 'aws-xray-sdk/lambda'

def lambda_handler(event:, context:)
  logger = Logger.new($stdout)
  logger.info("helo ruby lambda!")

  env_info = EnvInfo.new
  env_info.log_env
  env_info.log_event_and_context(event, context)
  
  { statusCode: 200, body: JSON.generate('hello, Jeff Goldblum!') }
end