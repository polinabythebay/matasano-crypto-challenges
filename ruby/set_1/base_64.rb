
#convert hex to base 64

def hex_to_base_64(hex_string)
	#interpret string as hex
	hex_enc = [hex_string].pack('H*')
	#interpret hex as base 64
	base_64_enc = [hex_enc].pack("m0")
	return base_64_enc
end

hex_to_base_64("49276d206b696c6c696e6720796f757220627261696e206c"\
				"696b65206120706f69736f6e6f7573206d757368726f6f6d")
