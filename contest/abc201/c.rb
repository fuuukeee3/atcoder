s = gets.chomp.split("")
needs = []
questions = []
s.each_with_index do |ss, i|
  needs << i if ss == "o"
  questions << i if ss == "?"
end

count = 0
(0..9999).each do |i|

  numbers = i.to_s.rjust(4, "0").split("").map(&:to_i)
  a = []
  b = []
  numbers.each do |n|
    if needs.include?(n)
      a << n
    else
      b << n
    end
  end

  flg = true
  flg = false unless needs == a.uniq.sort
  flg = false if a.size < needs.size
  b.each do |bb|
    flg = false unless questions.include?(bb)
  end

  count += 1 if flg

end

puts count