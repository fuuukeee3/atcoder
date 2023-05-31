n, q = gets.chomp.split(" ").map(&:to_i)
a = (1..n).to_a
state = true

q.times do
  q1, x, y = gets.chomp.split(" ").map(&:to_i)
  case q1
  when 1
    if state
      a[x - 1] = y
    else
      a[n - x] = y
    end
  when 2
    state = !state
  when 3
    if state
      puts a[x - 1]
    else
      puts a[n - x]
    end
  end
end