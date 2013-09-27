IO.foreach("input.txt") do |line| 
s1, s2 =line.split(';').map { |s| s.split(',').map(&:to_i)}
puts (s1 & s2).join(',')
end