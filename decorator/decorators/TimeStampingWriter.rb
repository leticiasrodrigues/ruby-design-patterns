require_relative 'writerDecorator'

class TimeStampingWriter < WriteDecorator
  def write_line(line)
    @real_writer.write_line("#{Time.new}: #{line}")
  end
end
