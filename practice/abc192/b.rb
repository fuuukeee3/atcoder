s = gets.chomp.split("")

upper = ("A".."Z").to_a
lower = ("a".."z").to_a

flg = true
s.each_with_index do |ss, index|
  if (index + 1).odd?
    if upper.include?(ss)
      flg = false
      break
    end
  else
    if lower.include?(ss)
      flg = false
      break
    end
  end
end

puts flg ? "Yes" : "No"