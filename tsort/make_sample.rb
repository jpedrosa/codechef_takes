a = []
100_000.times do
  a << rand(10_000_000)
end
File.open('sample.txt', 'w'){|f| f.puts a }
