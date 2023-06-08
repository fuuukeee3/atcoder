q = gets.to_i
hash = {}
q.times do
  a, b, c = gets.chomp.split(" ")
  case a
  when "1"
    hash[b] = c.to_i
  when "2"
    puts hash[b]
  end
end


