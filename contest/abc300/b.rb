h, w = gets.chomp.split(" ").map(&:to_i)
a = []
b = []

h.times do |i|
  a << gets.chomp.split("")
end

h.times do |i|
  b << gets.chomp.split("")
end

# p a, b

flg = false

h.times do
  if a == b
    flg = true
  end

  tmp = a.pop
  a.unshift(tmp)
  if a == b
    flg = true
  end
  w.times do
    a = a.map do |aa|
      tmp = aa.pop
      aa.unshift(tmp)
      aa
    end
    if a == b
      flg = true
    end
  end
end

puts flg ? "Yes" : "No"