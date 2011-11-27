a = []
n = 100_000
n.times do
  a << rand(10_000_000_000)
end
File.open('sample.txt', 'w'){|f|
  f.puts n
  f.puts a
}

original_list = a[0..-1]
while a.length > 3
  odd = false
  a.delete_if do odd = !odd; odd end
end
placements = a.map do |n| original_list.index(n) + 1 end
File.open('sample_output.txt', 'w'){|f| f.puts placements }

