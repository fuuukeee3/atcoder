n, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

count = 0
s.permutation.uniq.each do |per|
  str = per.join("")
  flg = false
  (0..(n - k)).each do |i|
    index = i + k - 1
    str2 = str[i..index]
    if str2 == str2.reverse
      flg = true
      break
    end
  end
  count += 1 unless flg
end

p count
