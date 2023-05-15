n = gets.chomp.to_i

arr = Array.new(n+1) { true }
arr[0] = false
arr[1] = false

top = Math.sqrt(n).ceil

(2..top).each do |i|
  next unless arr[i]

  j =  2
  loop do
    break if i * j > n

    arr[i*j] = false
    j += 1
  end
end

arr.each_with_index do |a, index|
  next if index < 2
  puts index if a
end