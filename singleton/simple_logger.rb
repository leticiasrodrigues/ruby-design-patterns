class SimpleLogger
  ERROR = 1
  WARNING = 2
  INFO = 3

  def initialize(level = WARNING)
    @log = File.open('log.txt', 'w')
    @level = level
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

logger = SimpleLogger.new
logger.error('Error message')
logger.warning('Warning message')
logger.info('Info message')
