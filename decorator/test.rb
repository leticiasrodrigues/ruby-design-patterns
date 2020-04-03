require_relative 'enhancedWriter'
require_relative 'simpleWriter'
require_relative 'numberingWriter'
require_relative 'checkSummingWriter'
require_relative 'timeStampingWriter'

writer = EnhancedWriter.new('out.txt')
writer.write_line('A plain line')
writer.checksumming_write_line('A line with checksum')
writer.timestamping_write_line('With time stamp')
writer.numbering_write_line('With line number')
writer.close

writer = CheckSummingWriter.new(
  TimeStampingWriter.new(
    NumberingWriter.new(
      SimpleWriter.new('out-decorator.txt')
    )
  )
)

writer.write_line('Usando decorators!')
writer.write_line('Hello!')
writer.write_line('Todas as linhas tem um mesmo formato (:')
