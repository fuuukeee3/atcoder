n = gets.chomp.to_i

arr = []
(0..99999).each do |i|
  is = i.to_s.rjust(5, "0")
  if is[0] == is[1] && is[2] == is[4]
    arr << is
  end
end

count = 0
pairs = ["11", "22", "33", "44", "55", "66", "77", "88", "99"]

pairs.each do |pair|
  (0..99).each do |i|
    arr.each do |a|
      s = pair + i.to_s.rjust(2, "0") + a
      count += 1

      if count == n
        puts s
        return
      end
    end
  end
end
