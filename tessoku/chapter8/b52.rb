n, x = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split("")
a.unshift("")

q = []
q << x
a[x] = "@"

while q.size > 0
  position = q.shift

  if position - 1 >= 1 && a[position - 1] == "."
    a[position - 1] = "@"
    q << (position - 1)
  end

  if position + 1 <= n && a[position + 1] == "."
    a[position + 1] = "@"
    q << (position + 1)
  end
end

puts a.join("")