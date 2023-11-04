n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

require 'set'
hash = Hash.new
(0...m).each do |i|
  if hash[a[i]].nil?
    hash[a[i]] = Set.new
    hash[a[i]] << b[i]
  else
    hash[a[i]] << b[i]
  end

  if hash[b[i]].nil?
    hash[b[i]] = Set.new
    hash[b[i]] << a[i]
  else
    hash[b[i]] << a[i]
  end
end

p hash

flg = true
(0...m).each do |i|
  unless hash[a[i]].include?(b[i]) && hash[b[i]].include?(a[i])
    flg = false
  end
end

p flg