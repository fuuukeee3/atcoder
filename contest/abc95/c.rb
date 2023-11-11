a, b, c, x, y = gets.chomp.split(" ").map(&:to_i)

if a + b < c * 2
  # A と Bをそのまま買う
  puts a * x + b * y
  return
end

prices = []
# x, y 多い数まで買って余りが出る
prices << [x, y].max * c * 2

# x, y 少ない数まで買って、A,Bを個別に買う
tmp_price = [x, y].min * c * 2
fusoku_price = ((x > y) ? a : b) * (x - y).abs
prices << tmp_price + fusoku_price
puts prices.min
