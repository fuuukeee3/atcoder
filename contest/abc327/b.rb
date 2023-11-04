b = gets.chomp.to_i

ans = -1
(1..20).each do |i|
  if i ** i == b
    ans = i
  end
end

puts ans