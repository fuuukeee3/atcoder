require 'set'
n, q = gets.chomp.split(" ").map(&:to_i)

unclalled = (1..n).to_a
called = Set.new
results = []
q.times do
  query = gets.chomp.split(" ").map(&:to_i)

  case query[0]
  when 1
    called << unclalled.shift
  when 2
    x = query[1]
    called.delete(x)
  when 3
    results << called.first
  end
end


puts results.join("\n")