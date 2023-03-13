n = gets.chomp.to_i
sunuke = gets.chomp.split(" ").map(&:to_i)
takahashi = gets.chomp.split(" ").map(&:to_i)

current = takahashi.find_index(takahashi.min)
results = []
results[current] = takahashi[current]

(n-1).times do
  value1 = results[current] + sunuke[current]
  target = current + 1

  if target >= n
    target -= n
  end
  value2 = takahashi[target]

  results[target] = value
  current += 1
end

p results


