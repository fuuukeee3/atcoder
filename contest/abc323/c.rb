n, m = gets.chomp.split(" ").map(&:to_i)
scores = gets.chomp.split(" ").map(&:to_i)

tmp_results = []
n.times do |index|
  s = gets.chomp.split("")

  tmp_score = 0
  nokori = []

  s.each_with_index do |ss, i|
    if ss == 'o'
      tmp_score += scores[i]
    else
      nokori << scores[i]
    end
  end

  tmp_results << {
    tmp_score: tmp_score + index + 1,
    nokori: nokori.sort.reverse,
  }
end

max_score = tmp_results.map { |r| r[:tmp_score] }.max

tmp_results.each do |result|
  count = 0
  loop do
    break if result[:tmp_score] >= max_score

    result[:tmp_score] += result[:nokori].shift
    count += 1
  end
  puts count
end