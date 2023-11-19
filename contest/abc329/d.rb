n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

win = nil
results = Array.new(n+1) { 0 }
a.each do |i|
  results[i] += 1

  if win.nil?
    puts i
    win = i
    next
  end

  if results[win] == results[i]
    if win < i
      puts win
    else
      puts i
      win = i
    end
  elsif results[win] < results[i]
    puts i
    win = i
  else
    puts win
  end
end
