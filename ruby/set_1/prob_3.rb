#Single-byte XOR cipher
#a hex encoded string has been XOR'd by a single char
#find the single char to get the original string

class String
  def ^( other )
    b1 = self.unpack("U*")
    b2 = other.unpack("U*")
    longest = [b1.length,b2.length].max
    b1 = [0]*(longest-b1.length) + b1
    b2 = [0]*(longest-b2.length) + b2
    b1.zip(b2).map{ |a,b| a^b }.pack("U*")
  end

str1 = "1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736"

  for i in 0..127

	str2 = [str1].pack("H*") #hex string to ascii string
	str3 = i.chr*str2.length #char string to ascii string

	result = str2^str3 #xor ascii strings
	puts result 

  end

end
















