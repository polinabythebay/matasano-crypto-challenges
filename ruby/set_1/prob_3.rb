#Single-byte XOR cipher
#a hex encoded string has been XOR'd by a single char
#find the single char to get the original string


class String
  def ^( other )
    b1 = self.unpack("C*") #8 bit unsigned integer: ruby can have invalid utf-8 probs if using U*
    b2 = other.unpack("C*")
    longest = [b1.length,b2.length].max
    b1 = [0]*(longest-b1.length) + b1
    b2 = [0]*(longest-b2.length) + b2
    b1.zip(b2).map{ |a,b| a^b }.pack("U*")
  end
end

def print_possible_messages(str1)
	
	regex = /\A[A-Za-z'\s]+{3,}\z$/ 

	for i in 0..127 #all numeric ascii values

		str2 = [str1].pack("H*") #hex decoding displayed in ascii 
		str3 = i.chr*str2.length #char representing int value displayed in ascii 

		result = str2^str3 #xor ascii strings	

		# puts result
		if (result.match regex)
			puts result
		end

	end
end

str1 = "1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736"

# print_possible_messages(str1)

str2 = "0e3647e8592d35514a081243582536ed3de6734059001e3f535ce6271032"


#fixing invalid utf-8 in ruby

str3 = "334b041de124f73c18011a50e608097ac308ecee501337ec3e100854201d"
str4 = "40e127f51c10031d0133590b1e490f3514e05a54143d08222c2a4071e351"


prob_str = "7b5a4215415d544115415d5015455447414c155c46155f4058455c5b523f"

print_possible_messages(prob_str)















