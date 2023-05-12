n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

people, mod = a.sum.divmod(n)

unless mod.zero?
  puts -1
  exit
end

