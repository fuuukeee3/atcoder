n = gets.chomp.to_i
answers = (1..(n * 2 + 1)).to_a
loop do
  takahashi = answers.delete_at(0)
  puts takahashi
  STDOUT.flush
  i = gets.chomp.to_i
  break if i == 0
  answers.delete(i)
end