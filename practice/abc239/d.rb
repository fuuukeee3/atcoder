require 'prime'

a, b, c, d = gets.chomp.split(" ").map(&:to_i)

results = Array.new((b - a) + 1) { false }
(a..b).each_with_index do |t, index|
  (c..d).each do |aoki|
    results[index] = true if Prime.prime?(t + aoki)
  end
end

puts results.all? ? "Aoki" : "Takahashi"