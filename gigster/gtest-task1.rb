require "byebug"

def solution(e, l)
  # write your code in Ruby 2.2
  # entrance fee + first hour = 5
  # need to convert e and l into date strings or minutes

  #assumptions
  # you only park the car in the parking lot for last than 24 hours
  # the "HH:MM" strings are in military time meaning "00:00" to "24:00"

  hour_cost = 4
  cost = 5 #entrance and first hour

  enter_time = convert_to_min(e)
  exit_time = convert_to_min(l)
  duration = exit_time - enter_time

  if duration > 60
    duration -= 60
    cost += (duration / 60) * hour_cost
    if duration % 60 != 0
      cost += hour_cost
    end
  end
  cost
end

def convert_to_min(time_string)
  arr = time_string.split(":")
  minutes = (arr[0].to_i * 60) + arr[1].to_i
end
