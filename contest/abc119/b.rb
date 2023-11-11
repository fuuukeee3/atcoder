n = gets.chomp.to_i
hash = {
  JPY: 0.0,
  BTC: 0.0,
}
n.times do
  x, u = gets.chomp.split(" ")
  hash[u.to_sym] += x.to_f
end

puts hash[:JPY] + hash[:BTC] * 380000.0