# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

s = gets.chomp

count = 0
s.split("").each do |ss|
  if ss == "v"
    count += 1
  elsif ss == "w"
    count += 2
  end
end

puts count
