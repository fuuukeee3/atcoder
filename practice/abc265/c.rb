require "set"
h, w = gets.chomp.split(" ").map(&:to_i)

arr = []
h.times do
  arr << gets.chomp.split("")
end

done = Set.new
current = [1, 1]
done << current
flg = false
loop do
  case arr[current[0] - 1][current[1] - 1]
  when "U"
    if current[0] == 1
      break
    else
      current[0] -= 1
    end
  when "D"
    if current[0] == h
      break
    else
      current[0] += 1
    end
  when "L"
    if current[1] == 1
      break
    else
      current[1] -= 1
    end
  when "R"
    if current[1] == w
      break
    else
      current[1] += 1
    end
  end

  if done.include?(current)
    flg = true
    break
  else
    done << current
  end
end

puts flg ? -1 : current.join(" ")
