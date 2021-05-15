require 'logger'
require 'json'
require 'aws-sdk-lambda'
$client = Aws::Lambda::Client.new()

require 'aws-xray-sdk/lambda'

def lambda_handler(event:, context:)
  logger = Logger.new($stdout)
  logger.info("helo ruby lambda!")
  logger.info('## ENVIRONMENT VARIABLES')
  vars = Hash.new
  ENV.each do |variable|
    logger.info("Type is #{variable.class} and length is #{variable.length()}")
    vars[variable[0]] = variable[1]
  end
  logger.info(vars.to_json)
  logger.info('## ENV.to_a')
  # logger.info(ENV.to_a)
  logger.info('## EVENT')
  logger.info(event.to_json)
  logger.info(event)
  logger.info('## CONTEXT')
  # logger.info(context)
  logger.info(context.function_name)
  { statusCode: 200, body: JSON.generate('hello, Jeff Goldblum!') }
end