n, k = gets.chomp.split(" ").map(&:to_i)
medi = Hash.new {0}
total = 0
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  total += b
  medi[a+1] += b
end

if total <= k
  puts 1
  exit
end

medi.sort.to_h.each do |kk, v|
  total -= v
  if total <= k
    puts kk
    exit
  end
end