n = gets.chomp.to_i
s = gets.chomp.split("")

current = 'e'
result = [0, 0]
s.each do |ss|
  if ss == 'S'
    case current
    when 'e'
      result[0] += 1
    when 's'
      result[1] -= 1
    when 'w'
      result[0] -= 1
    when 'n'
      result[1] += 1
    end
  else
    case current
    when 'e'
      current = 's'
    when 's'
      current = 'w'
    when 'w'
      current = 'n'
    when 'n'
      current = 'e'
    end
  end
end

puts result.join(" ")