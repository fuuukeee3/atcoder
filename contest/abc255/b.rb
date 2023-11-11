n, k = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)
peoples = []
n.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  peoples << [x, y]
end

max = 0
peoples.each do |people|
  pmin = 99999999999
  arr.each do |i|
    x = peoples[i-1][0]
    y = peoples[i-1][1]

    if people[0] == x && people[1] == y
      pmin = [pmin, 0].min
    elsif people[0] == x
      pmin = [pmin, (people[1] - y).abs].min
    elsif people[1] == y
      pmin = [pmin, (people[0] - x).abs].min
    else
      xx = (people[0] - x).abs
      yy = (people[1] - y).abs
      cc = Math.sqrt(xx ** 2 + yy ** 2)
      pmin = [pmin, cc].min
    end
  end

  max = [max, pmin].max
end

puts max