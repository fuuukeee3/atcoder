s = gets.chomp
hash = {}
s.split("").each do |ss|
  if hash.key?(ss)
    hash[ss] += 1
  else
    hash[ss] = 1
  end
end

max = hash.values.max
arr = []
hash.each do |k, v|
  arr << k if v == max
end

puts arr.sort[0]