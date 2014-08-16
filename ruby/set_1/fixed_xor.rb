# Write a function that takes two equal-length buffers
# and produces their XOR combination

#notes: xor is reversible way to mix data together
# "one or the other but not both"
# all bits that are different are 1 and all bits that are the same
# are 0

def fixed_xor (str1, str2)
	if (str1.length == str2.length)
		result = (str1.hex^str2.hex).to_s(16)
	end
end

puts fixed_xor("1c0111001f010100061a024b53535009181c", "686974207468652062756c6c277320657965")



