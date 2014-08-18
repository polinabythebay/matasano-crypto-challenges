#Detect single-character XOR

#read through 60-char strings and determine which one has
# been encrypted by a single-character XOR

#iterate through entire text file and print out possible messages for all of them
require './prob_3'

File.open('test1.txt', 'r') do |f|  
  while line = f.gets  
 	print_possible_messages(line)
  end  
end 

found_message = "7b5a4215415d544115415d5015455447414c155c46155f4058455c5b523f"
message = "Now that the party is jumping"

