a = []
n = 100_000
n.times do
  a << rand(10_000_000)
end
File.open('sample.txt', 'w'){|f|
  f.puts n
  f.puts a
}
File.open('sample_output.txt', 'w'){|f| f.puts a.sort }

