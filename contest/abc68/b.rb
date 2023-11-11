n = gets.chomp.to_i

def waru_count(n)
  count = 0
  loop do
    div, mod = n.divmod(2)
    if mod.zero?
      count += 1
      n = div
    else
      break
    end
  end

  count
end

result = 1
max = 0
(1..n).each do |i|
  count = waru_count(i)
  if max < count
    max = count
    result = i
  end
end

puts result
