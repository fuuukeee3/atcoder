alpah = gets.chomp.split("")

n = gets.chomp.to_i
names = Hash.new { 0 }
n.times do
  name = gets.chomp
  sum = 0
  name.split("").reverse.each_with_index do |s, i|
    sum += (26 ** i) * (alpah.find_index(s) + 1)
    # p [name, sum]
  end
  names[name] = sum
end

puts names.sort_by { |k, v| v }.map {|a| a[0]}.join("\n")
