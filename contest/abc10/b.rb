n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

ok = [1, 3, 7, 9]
count = 0
a.each do |aa|
  next if ok.include?(aa)

  arr = []
  ok.each do |nn|
    if aa - nn > 0
      arr << aa - nn
    end
  end
  count += arr.min
end

puts count
