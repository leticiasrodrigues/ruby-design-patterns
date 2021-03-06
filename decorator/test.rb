require_relative 'enhancedWriter'
require_relative 'simpleWriter'
require_relative 'decorators/numberingWriter'
require_relative 'decorators/checkSummingWriter'
require_relative 'decorators/timeStampingWriter'
require_relative 'modules/numberingWriter'
require_relative 'modules/checkSummingWriter'
require_relative 'modules/timeStampingWriter'

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

writer = SimpleWriter.new('out-modules.txt')
writer.extend(Modules::NumberingWriter)
writer.extend(Modules::TimeStampingWriter)
writer.extend(Modules::CheckSummingWriter)

writer.write_line('Agora com módulos!')
writer.write_line('Hello!')
writer.write_line('Todas as linhas tem um mesmo formato (:')

writer = SimpleWriter.new('out-wrap.txt')

class << writer
  alias old_write_line write_line

  def write_line(line)
    old_write_line("#{Time.new}: #{line}")
  end
end

writer.write_line('Agora com wrapping methods!')
writer.write_line('Hello!')
writer.write_line('Todas as linhas tem um mesmo formato (:')
