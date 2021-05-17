require 'logger'

class EnvInfo
  def initialize
    @logger = Logger.new($stdout)
    @logger.info("hello env info class")
  end
end
