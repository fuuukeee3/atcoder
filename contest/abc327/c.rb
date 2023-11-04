arr = []
9.times do
  arr << gets.chomp.split(" ").map(&:to_i)
end

flg = true

# 各行
unless arr.all? { |a| a.uniq.size == 9 }
  flg = false
end

# 各列
unless arr.transpose.all? { |a| a.uniq.size == 9 }
  flg = false
end

three = Array.new(9) { [] }
tmp = 0
arr.each_with_index do |a, i|
  slices = a.each_slice(3)

  tmp += 3 if i == 3 || i == 6

  slices.each_with_index do |slice, ii|
    index = ii % 3 + tmp
    three[index] << slice.flatten
  end
end

unless three.all? { |t| t.flatten.uniq.size == 9 }
  flg = false
end

if flg
  puts "Yes"
else
  puts "No"
end