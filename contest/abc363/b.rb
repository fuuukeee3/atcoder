n, t, pp = gets.chomp.split(" ").map(&:to_i)
l = gets.chomp.split(" ").map(&:to_i)

current = l.count { |ll| ll >= t }

if current >= pp
  puts 0
  exit
end

(1..100).each do |i|
  l2 = l.map { |ll| ll + i}.count {|ll| ll >= t}
  if l2 >= pp
    puts i
    break
  end
end
