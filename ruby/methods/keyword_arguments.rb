#double splat (**)

def convert_temp(start_temp, input_scale: '', output_scale: '')
  if input_scale == 'celsius' && output_scale == 'fahrenheit'
    return (9.0 * start_temp)/5 + 32.0
  elsif input_scale == 'celsius' && output_scale == 'kelvin'
    return start_temp + 273.15
  elsif input_scale == 'fahrenheit' && output_scale == 'celsius'
    return 5.0 * (start_temp - 32) / 9.0
  elsif input_scale == 'fahrenheit' && output_scale == 'kelvin'
    return 5.0 * (start_temp - 32) / 9.0 + 273.15
  elsif input_scale == 'kelvin' && output_scale == 'fahrenheit'
    return 9.0 * (start_temp - 273.15) / 5.0 + 32.0
  elsif input_scale == 'kelvin' && output_scale == 'celsius'
    return start_temp - 273.15
  else
    return start_temp
  end
end
