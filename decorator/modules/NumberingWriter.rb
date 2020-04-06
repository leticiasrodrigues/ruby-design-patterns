module Modules
  module NumberingWriter
    attr_accessor :line_number

    def write_line(line)
      @line_number ||= 1
      super("#{@line_number}: #{line}")
      @line_number += 1
    end
  end
end
