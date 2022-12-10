# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

n, t = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

total = arr.sum
syu = t / total

sa = if syu >= 1
    t - (total * syu)
  else
    t - total
  end

if sa >= 0
  current = 0
  loop do
    sa -= arr[current]

    if sa > 0
      current += 1
      if current > n - 1
        current = 0
      end
    else
      puts "#{current + 1} #{arr[current] + sa}"
      break
    end
  end
  return
end

if sa < 0
  current = n - 1
  sa = sa.abs
  loop do
    sa -= arr[current]

    if sa > 0
      current -= 1
      if current < 0
        current = n - 1
      end
    else
      puts "#{current + 1} #{sa.abs}"
      break
    end
  end
  return
end
