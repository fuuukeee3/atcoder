n, p, q, r, s = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

arr1 = arr[0...(p - 1)]
arr2 = arr[(p - 1)...(q)]
arr3 = arr[q...(r - 1)]
arr4 = arr[(r - 1)...(s)]
arr5 = arr[s..]
# p arr1
# p arr2
# p arr3
# p arr4
# p arr5

puts (arr1 + arr4 + arr3 + arr2 + arr5).join(" ")
