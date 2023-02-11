def func(current, arr, hash)
  return [] if hash[current]
  rtn = []
  arr.each do |a|
    new_current = current + a
    rtn << new_current if hash[new_current].nil?
  end
  rtn
end

n = gets.chomp.to_i
steps = gets.chomp.split(" ").map(&:to_i)
m = gets.chomp.to_i
mochis = gets.chomp.split(" ").map(&:to_i)
goal = gets.chomp.to_i

ng_stairs = {}
mochis.each do |i|
  ng_stairs[i] = true
end

i = 0
q = steps
while q.size > 0
  current = q.shift
  if current == goal
    puts "Yes"
    break
  end

  q << func(current, steps, ng_stairs)
  i += 1
  if i == 100000000
    put "No"
    break
  end
end
