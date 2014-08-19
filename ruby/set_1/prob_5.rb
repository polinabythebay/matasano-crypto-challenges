#implement repeating-key xor

#start with string --> unpack it into C*
#start with xor string --> unpack it into C*

#compare both byte arrays

#you'll get an array in C*
#encode it into hex and return


def repeat_key_xor(str1, xor_str)

	s1 = str1.unpack("C*")
	s2 = xor_str.unpack("C*")

	s3 = Array.new
	counter = 0
	max = s2.length

	for i in 0...(s1.length)
		if (counter == max)
			counter = 0
		end
		s3.push(s2[counter])
		counter = counter+1
	end

	result =  s1.zip(s3).map{ |a,b| a^b }
	
	puts result.map { |b| b.to_s(16) }.join #got the wrong one 

end

str1 = "I go crazy when I hear a cymbal"
xor_str = "ICE"

repeat_key_xor(str1, xor_str)

