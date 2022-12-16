n = gets.chomp.to_i
a = gets.chomp.to_i

total = a
err_flg = false
for i in 0...n
  op, b = gets.chomp.split(" ")

  next if err_flg
  if op == "/" && b.to_i.zero?
    puts "error"
    err_flg = true
    next
  end

  case op
  when "+"
    total += b.to_i
  when "-"
    total -= b.to_i
  when "*"
    total *= b.to_i
  when "/"
    total = total / b.to_f
    if total > 0
      total = total.floor
    else
      total = total.ceil
    end
  end

  puts "#{i + 1}:#{total}"
end
