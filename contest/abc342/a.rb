s = gets.chomp.split("")
hash = {}
s.each do |ss|
  if hash.key?(ss)
    hash[ss] += 1
  else
    hash[ss] = 1
  end
end

a = ''
hash.each do |k, v|
  if v == 1
    a = k
  end
end

puts s.index(a) + 1