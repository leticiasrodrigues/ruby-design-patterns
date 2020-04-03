require_relative 'writerDecorator'

class CheckSummingWriter < WriteDecorator
  def initialize(real_writer)
    super(real_writer)
    @check_sum = 0
  end

  def write_line(line)
    line.each_byte {|byte| @check_sum = (@check_sum + byte) % 256 }
    @check_sum += '\n'.to_i % 256
    @real_writer.write_line("#{@check_sum}: #{line}")
  end
end
