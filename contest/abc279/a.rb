puts gets.chomp.split("").reduce(0) { |sum, ss| sum += ss == "v" ? 1 : 2 }
