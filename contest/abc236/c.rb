n, m = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split(" ")
t = gets.chomp.split(" ")

hash = {}
s.each do |ss|
  hash[ss] = false
end

t.each do |tt|
  hash[tt] = true
end

hash.each do |k, v|
  puts v ? "Yes" : "No"
end