n, t = gets.chomp.split(" ").map(&:to_i)
sum = 0
open_door= 0
close_door = 0
n.times do
  a = gets.chomp.to_i
  open_door = a
  close_door = a + t
end