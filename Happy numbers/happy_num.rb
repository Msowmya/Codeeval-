def happy?n
 checked=[]
until n==1 || checked.include?(n)
  checked << n
  n = n.to_s.each_char.map{|x| x.to_i**2}.inject(:+)
 end
n==1
end

IO.foreach("text.txt") do |line|
  puts happy?(line.to_i) ? 1 : 0
end
