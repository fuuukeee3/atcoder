s, t = gets.chomp.split(" ")

answers = []
s_size = s.size
(1...s_size).each do |w|
  slices = s.split("").each_slice(w)
  (1...s.size).each do |c|
    tmp = ""
    slices.each do |slice|
      if slice.size >= c
        tmp += slice[c-1]
      end
    end
    answers << tmp unless tmp == ""
  end
end

if answers.include?(t)
  puts "Yes"
else
  puts "No"
end
