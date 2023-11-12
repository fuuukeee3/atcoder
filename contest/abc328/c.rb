n, q = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp

rui = [0]
before = ''
s.split("").each_with_index do |ss, i|
  if before == ss
    rui << rui[i] + 1
  else
    rui << rui[i]
  end
  before = ss
end

q.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  puts rui[r] - rui[l]
end