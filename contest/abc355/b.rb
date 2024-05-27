n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

a.sort!
b.sort!
tmp = (a + b).sort

count = 0
tmp.each do |t|
  if count == 2
    break
  end

  if a.include?(t)
    count += 1
  else
    count = 0
  end
end

if count == 2
  puts "Yes"
else
  puts "No"
end