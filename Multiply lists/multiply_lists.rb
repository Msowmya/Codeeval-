IO.foreach("multiply.txt") do |list|
s1, s2 =list.split('|').map{|s| s.split(' ').map(&:to_i)}
result = s1.map.with_index{ |m,i| m * s2[i].to_i}
puts result.join(' ')
end