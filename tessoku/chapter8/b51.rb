s = gets.chomp.split("")
stack = []
s.each_with_index do |ss, index|
  if ss == "("
    stack.unshift(index+1)
  else
    start = stack.shift
    puts "#{start} #{index+1}"
  end
end