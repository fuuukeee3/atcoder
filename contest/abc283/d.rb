# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)
def find_indexes(arr, val)
  arr.filter_map.with_index { |element, i| i if element == val }
end

def good_str?(str)
  # str.gsub!(/[a-z]/, "")
  arr = str.split("")
  indexes1 = find_indexes(arr, "(")
  indexes2 = find_indexes(arr, ")")

  if indexes1.size == indexes2.size && indexes1.max < indexes2.max
    true
  else
    false
  end
end

s = gets.chomp
puts good_str?(s)
# box = []

# result = false
# s.each_with_index do |str, index|
#   if str.match?([a - z])
#     if box.include?(str)
#       break
#     else
#       box << str
#     end
#   end

#   if str == ")"
#   end
# end
