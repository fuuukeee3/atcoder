n = gets.chomp.to_i
hash = Hash.new { 0 }
arr = []
n.times do
  s, t = gets.chomp.split(" ")
  hash[s] += 1
  hash[t] += 1
  arr << [s, t]
end

flg = true
arr.each do |a|
  next if a[0] == a[1] && hash[a[0]] == 2
  unless hash[a[0]] == 1 || hash[a[1]] == 1
    flg = false
    next
  end
end

puts flg ? "Yes" : "No"