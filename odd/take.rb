#!/usr/bin/env ruby

count = STDIN.readline.to_i
list = []
while count > 0
  list << STDIN.readline.to_i
  count -= 1
end

original_list = list[0..-1]
while list.length > 3
  odd = false
  list.delete_if do odd = !odd; odd end
end

placements = list.map do |n| original_list.index(n) + 1 end

puts placements


