n = gets.chomp.to_i
movies = []
n.times do
  movies <<  gets.chomp.split(" ").map(&:to_i)
end

movies.sort! {|a, b| a[1] <=> b[1]}

sum = 0
end_time = nil
movies.each do |movie|
  if end_time.nil? || movie[0] >= end_time
    sum += 1
    end_time = movie[1]
  end
end

puts sum