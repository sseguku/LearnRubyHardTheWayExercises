#This formats the strings to be printed in this format
formatter = "%{first} %{second} %{third} %{fourth}"
puts formatter %{first: 1, second:2, third:3, fourth: 4}
#format text

leco = "%{old}, %{used}, %{news}"
puts leco % {old: 1, used: 5, news: 0}

puts leco % {old: "one", used: "two", news:"three"}

puts formatter % {first: true, second: false, third: true, fourth: false}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

