# Define formatter as a string with four values
formatter = "%{first} %{second} %{third} %{fourth}"

# Shows formatter with the values of 1, 2, 3 and 4
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
# Shows formatter with the values one, two, three and four
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
# Shows formatter with the values true, false, true, false
puts formatter % {first: true, second: false, third: true, fourth: false }
# Shows formatter with values of formatter, formatter, formatter and formatter
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}
# Show formatter with four diferent strings
puts formatter % {
	first: "I had this thing.", 
	second: "That you could type up right.", 
	third: "But it didn't sing.", 
	fourth: "So I sad goodnight." 
}
