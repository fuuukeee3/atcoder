n, a, b = gets.chomp.split(" ").map(&:to_i)

white = "." * b
black = "#" * b

wrow = ""
flg = true
n.times do
  node = flg ? white : black
  wrow += node
  flg = !flg
end


brow = ""
flg = false
n.times do
  node = flg ? white : black
  brow += node
  flg = !flg
end

flg = true
n.times do
  a.times do
    puts flg ? wrow : brow
  end
  flg = !flg
end