require 'singleton'

class SimpleLogger
  include Singleton

  ERROR = 1
  WARNING = 2
  INFO = 3

  def initialize()
    @log = File.open('log.txt', 'w')
    @level = INFO
  end

  def error(msg)
    @log.puts("ERROR: #{msg}")
    @log.flush
  end

  def warning(msg)
    @log.puts("WARNING: #{msg}") if @level >= WARNING
    @log.flush
  end

  def info(msg)
    @log.puts("INFO: #{msg}") if @level >= INFO
    @log.flush
  end
end

logger = SimpleLogger.instance
same_logger = SimpleLogger.instance
SimpleLogger.instance.info("Me: #{logger}, also me: #{same_logger}")
logger.error('Error message')
logger.warning('Warning message')
logger.info('Info message')
