#!/usr/bin/env ruby

count = STDIN.readline.to_i
list = []
while count > 0
  list << STDIN.readline.to_i
  count -= 1
end
puts list.sort


