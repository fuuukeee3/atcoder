n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
called = {}

arr.each_with_index do |a, index|
  if called[index+1].nil?
    called[a] = true
  end
end

results = (1..n).to_a - called.keys
puts results.size
puts results.sort.join(" ")