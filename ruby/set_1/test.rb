
str1 = "I go crazy when I hear a cymbal"
xor_str = "ICE"

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


