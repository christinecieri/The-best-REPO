our_file = File.open("data.txt")  #assigning data.text to our file
food = eval(our_file.read)      #assigning

 puts "Everyone knows the most popular Thanksgiving food is #{food[:name]}"  #pulling food name out from our text file to finish sentence
print "But, let's say you could bring any type food to the Thanksgiving table....what would it be?  " #inputting new food new to replace my food text data
old_food_name = food[:name] #assigning first food name to old food name
food[:name] = gets.chomp   #inputting new food name to assign to text data
new_food_name = food[:name]
puts "#{new_food_name} is a great choice, everyone finds it \"#{food[:adjective]}\"" #pulling in new food name in the sentence  
print "When is the last time you ate #{food[:name]}? " #
food[:time] = gets.chomp

puts food

new_file = File.open("data.txt", "w")
new_file.puts food
new_file.close 
 

