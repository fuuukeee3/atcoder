q = gets.chomp.to_i
que = []
q.times do
  a, b = gets.chomp.split(" ")
  case a
  when "1"
    que << b
  when "2"
    puts que[0]
  when "3"
    que.shift
  end
end