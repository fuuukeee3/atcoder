s = gets.chomp

if s[0] == "1"
  puts "No"
  return
end

arr = []
s.split("").each_with_index do |ss, index|
  pin = index + 1
  case pin
  when 7
    (arr[0] ||= []) << ss
  when 4
    (arr[1] ||= []) << ss
  when 2, 8
    (arr[2] ||= []) << ss
  when 1, 5
    (arr[3] ||= []) << ss
  when 3, 9
    (arr[4] ||= []) << ss
  when 6
    (arr[5] ||= []) << ss
  when 10
    (arr[6] ||= []) << ss
  end
end

(0...(arr.size)).each do |i|
  (i + 1...(arr.size)).each do |j|
    if (i - j).abs == 1
      next
    end

    if arr[i].select { |ii| ii == "1" }.size > 0 && arr[j].select { |jj| jj == "1" }.size > 0
      (i + 1...j).each do |ooo|
        if arr[ooo].select { |o| o == "1" }.size == 0
          puts "Yes"
          return
        end
      end
    end
  end
end

puts "No"
