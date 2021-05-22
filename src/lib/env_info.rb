require 'logger'

class EnvInfo
  def initialize
    @logger = Logger.new($stdout)
    @logger.info("initialize env info class")
  end

  def log_env
    vars = Hash.new
    ENV.each do |variable|
      # @logger.info("Type is #{variable.class} and length is #{variable.length()}")
      vars[variable[0]] = variable[1]
    end
    @logger.info("## ENV vars:")
    @logger.info(vars.to_json)
    # @logger.info('## ENV.to_a')
    # logger.info(ENV.to_a)
  end

  def log_event_and_context(event, context)
    @logger.info('## ENVIRONMENT VARIABLES')
    @logger.info('## EVENT')
    @logger.info(event.to_json)
    @logger.info(event)
    @logger.info('## CONTEXT')
    @logger.info(context)
    @logger.info(context.function_name)
  end
end
