require_relative 'enhancedWriter'

writer = EnhancedWriter.new('out.txt')
writer.write_line('A plain line')
writer.checksumming_write_line('A line with checksum')
writer.timestamping_write_line('With time stamp')
writer.numbering_write_line('With line number')
