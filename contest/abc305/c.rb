h, w = gets.chomp.split(" ").map(&:to_i)
arr = []
h.times do
  arr << gets.chomp.split("")
end

top = 0
h_flg = true
left = 0
w_flg = true

new_arr = []
arr.each do |a|
  if a.all? { |aa| aa == "."}
    if h_flg
      top += 1
    end
  else
    new_arr << a
    h_flg = false
  end
end

new_arr2 = []
new_arr.transpose.each do |a|
  if a.all? { |aa| aa == "."}
    if w_flg
      left += 1
    end
  else
    new_arr2 << a
    w_flg = false
  end
end

new_arr3 = new_arr2.transpose
new_arr3.each_with_index do |a, i|
  a.each_with_index do |b, j|
    if new_arr3[i][j] == "."
      puts [i + 1 + top, j + 1 + left].join(" ")
      break
    end
  end
end