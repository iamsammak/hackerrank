def transcode(str)
  str.force_encoding(Encoding::UTF_8)
  str
end


def serial_average(serial_string)
  serial_num = serial_string[0, 3]
  x = serial_string[4, 5].to_f
  y = serial_string[10, 5].to_f

  [serial_num, ((x + y) / 2).round(2).to_s].join('-')
end
