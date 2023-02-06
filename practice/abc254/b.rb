n = gets.chomp.to_i
arr = Array.new(n) { [] }
n.times do |i|
  (0...(i + 1)).each do |j|
    if j == 0 || j == i
      arr[i][j] = 1
    else
      arr[i][j] = arr[i-1][j-1] + arr[i-1][j]
    end
  end
end

puts arr.map { |a| a.join(" ") }.join("\n")