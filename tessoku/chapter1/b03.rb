n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

flg = false
(0...(n - 2)).each do |a|
  (a + 1...(n - 1)).each do |b|
    (b + 1...n).each do |c|
      flg = true if arr[a] + arr[b] + arr[c] == 1000
    end
  end
end

puts flg ? "Yes" : "No"
