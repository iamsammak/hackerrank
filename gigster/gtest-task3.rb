require "byebug"

def solution(a, b, m, x, y)
  # write your code in Ruby 2.2
  # 0(ground floor) to M(max floor)
  # max capacity of X people, weight limit of Y
  # A is array of person's weight
  # B is array of target floors

  # queue cannot be changed BUT people don't get off the elevator in regards to their queue position
  # they only enter the elevator via the queue
  # once on the elevator(like a normal elevator) they get off if elevator reaches target floor)
  #things to consider
  # passengers with duplicate floors

  # keep track of num of trips in an arr, which has arrays within with the target floors
  # i.e. trips = [[2,3],[5]]
  # before totaling the num of stops, run uniq on each individual arr inside trips to rid duplicates
  # total_stops += trips[0].uniq.length + 1(ground floor)

  total_stops = 0
  trip_idx = 0
  current_weight = 0
  trips = []

  i = 0

  while i < a.length

    if trips[trip_idx] != nil #ruby's version of JS typeof
      if trips[trip_idx].length == x || current_weight + a[i] > y
        trip_idx += 1
        current_weight = 0
      end
    end

    trips[trip_idx] = trips[trip_idx] || []
    trips[trip_idx].push(b[i]) # shouldn't push if over X or Y
    current_weight += a[i]

    i += 1
  end

  trips.each {|trip| total_stops += (trip.uniq.length + 1) }

  total_stops
end
