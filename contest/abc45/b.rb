a = gets.chomp.split("")
b = gets.chomp.split("")
c = gets.chomp.split("")

turn = 'a'
loop do
  case turn
  when 'a'
    if a.size.zero?
      puts "A"
      break
    end

    turn = a.shift
  when 'b'
    if b.size.zero?
      puts "B"
      break
    end

    turn = b.shift
  when 'c'
    if c.size.zero?
      puts "C"
      break
    end

    turn = c.shift
  end
end
