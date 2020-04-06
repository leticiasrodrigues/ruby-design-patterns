module Modules
  module CheckSummingWriter
    def write_line(line)
      @check_sum ||= 0
      line.each_byte {|byte| @check_sum = (@check_sum + byte) % 256 }
      @check_sum += '\n'.to_i % 256
      super("#{@check_sum}: #{line}")
    end
  end
end
