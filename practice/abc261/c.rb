n = gets.chomp.to_i
hash = {}
n.times do
  s = gets.chomp
  if hash[s]
    puts "#{s}(#{hash[s]})"
    hash[s] += 1
  else
    puts s
    hash[s] = 1
  end
end
