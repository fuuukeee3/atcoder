n, l, r = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

results = a.map do |aa|
  if aa >= l && aa < r
    aa
  elsif aa < l
    l
  else
    r
  end
end

puts results.join(" ")