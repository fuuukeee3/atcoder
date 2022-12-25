n, m = gets.chomp.split(" ").map(&:to_i)

hash = {}
m.times do |i|
  arr = gets.chomp.split(" ").map(&:to_i)
  k = arr.shift

  arr.each do |a|
    (hash[a] ||= []).concat(arr)
  end
end

result = "Yes"
hash.each do |k, v|
  if v.uniq.size != n
    result = "No"
    break
  end
end

puts result
