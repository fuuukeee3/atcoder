# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

s = gets.chomp
t = gets.chomp

count = 1
t.size.times do |i|
  if s[i] != t[i]
    puts count
    return
  end
  count += 1
end
