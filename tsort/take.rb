#!/usr/bin/env ruby

lines = STDIN.readlines
a = lines.map{|s| s.to_i }.sort
puts a


