def prime?(n)
  return false if n < 2
  return true if n == 2

  top = Math.sqrt(n).ceil
  (2..top).each do |i|
    return false if n % i == 0
  end

  true
end

q = gets.chomp.to_i
q.times do
  x = gets.chomp.to_i
  if prime?(x)
    puts "Yes"
  else
    puts "No"
  end
end
