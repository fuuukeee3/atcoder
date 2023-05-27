n, m, h, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
items = {}
m.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  items["#{x}_#{y}"] = true
end

current = [0, 0]
n.times do |i|
  case s[i]
  when "R"
    current = [current[0] + 1, current[1]]
  when "L"
    current = [current[0] - 1, current[1]]
  when "U"
    current = [current[0], current[1] + 1]
  when "D"
    current = [current[0], current[1] - 1]
  end

  h -= 1
  if h < 0
    puts "No"
    exit
  else
    str = "#{current[0]}_#{current[1]}"
    if items[str] && h < k
      h = k
      items[str] = false
    end
  end
end

puts "Yes"