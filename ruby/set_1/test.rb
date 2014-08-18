
 

untrusted_string = "0e3647e8592d35514a081243582536ed3de6734059001e3f535ce6271032"
					"0e3647e8592d35514a081243582536ed3de6734059001e3f535ce6271032"

#seems to stop after line 171


#fixing invalid utf-8 in ruby
# ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')
# valid_string = ic.iconv(untrusted_string + ' ')[0..-2]

valid_string = untrusted_string.encode("UTF-8", :invalid => :replace, :undef => :replace, :replace => "?")

puts valid_string


require 'iconv' unless String.method_defined?(:encode)

if String.method_defined?(:encode)
  file_contents.encode!('UTF-8', 'UTF-8', :invalid => :replace)
else
  ic = Iconv.new('UTF-8', 'UTF-8//IGNORE')
  file_contents = ic.iconv(file_contents)
end

