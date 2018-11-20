(1..10).each_slice(2){|a| p a}

[1,2,3].map{ |n| n*2}
[1,2,3].map{|e|  e*6}
[1,2,3].map{|k| k.even?}
[1,2,3,4].map(&:even?)


my_array = [
    [1,2,3,4],
    [5,6,7,8],
]

my_array.map{|row|row.map {|col| col + 1 }}
print my_array