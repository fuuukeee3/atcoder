n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

results = []

a.each_with_index do |aa, index|
  if index.zero?
    results << aa
    next
  end

  sa = (results.last - aa).abs
  if sa == 1
    results << aa
  else
    last = results.last
    if last < aa
      (last + 1).upto(aa) do |i|
        results << i
      end
    else
      (last - 1).downto(aa) do |i|
        results << i
      end
    end
  end
end

puts results.join(" ")