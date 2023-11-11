h, w = gets.chomp.split(" ").map(&:to_i)
arr = []
h.times do
  arr << gets.chomp.split("")
end

dh = [1, 0, -1, 0, 1, -1, -1, 1]
dw = [0, 1, 0, -1, 1, 1, -1, -1]

(0...h).each do |i|
  (0...w).each do |j|
    if arr[i][j] == "#"
      print arr[i][j]
      next
    end

    count = 0
    (0...(dh.size)).each do |k|
      hh = i + dh[k]
      ww = j + dw[k]

      next if hh < 0 || hh >= h || ww < 0 || ww >= w
      count += 1 if arr[hh][ww] == "#"
    end

    print count
  end
  puts
end
