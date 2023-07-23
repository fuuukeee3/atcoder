n = gets.chomp.to_i
s = gets.chomp

hash = {A: false, B: false, C: false}
s.split("").each_with_index do |ss, index|
  hash[ss.to_sym] = true
  if hash.values.all?
    puts index + 1
    break
  end
end