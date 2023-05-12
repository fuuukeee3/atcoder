s = gets.chomp.split("")
t = gets.chomp.to_i

current = [0, 0]
unknown = 0

s.each do |ss|
  case ss
  when "L"
    current = [current[0] - 1, current[1]]
  when "R"
    current = [current[0] + 1, current[1]]
  when "U"
    current = [current[0], current[1] + 1]
  when "D"
    current = [current[0], current[1] - 1]
  when "?"
    unknown += 1
  end
end

case t
when 1
  unknown.times do
    hash = {
      ll: [current[0] - 1, current[1]],
      rr: [current[0] + 1, current[1]],
      uu: [current[0], current[1] + 1],
      dd: [current[0], current[1] - 1],
    }

    max_key = nil
    max = 0
    hash.each do |k, v|
      if max_key.nil? || v[0].abs + v[1].abs >= max
        max_key = k
        max = v[0].abs + v[1].abs
      end
    end
    current = hash[max_key]
  end
when 2
  unknown.times do
    hash = {
      ll: [current[0] - 1, current[1]],
      rr: [current[0] + 1, current[1]],
      uu: [current[0], current[1] + 1],
      dd: [current[0], current[1] - 1],
    }

    min_key = nil
    min = 99999999999
    hash.each do |k, v|
      if min_key.nil? || v[0].abs + v[1].abs <= min
        min_key = k
        min = v[0].abs + v[1].abs
      end
    end
    current = hash[min_key]
  end
end
puts current[0].abs + current[1].abs

# if t == 1
#   puts (current[0]).abs + (current[1]).abs + unknown
# else
#   puts (current[0]).abs + (current[1]).abs - unknown
# end
