blogs =[]  ##defining the array

while true
puts "Please select your operation below"
puts "1: create a new blog"
puts "2: check the blog created"
puts "3: exit this blog operation"

number =gets.to_i

if number ==1
blog={}  ## declaration of hash
puts "1: create a new blog"
puts "please enter the title of the blog"
blog[:title]=gets.chomp
puts "please enter the body of the blog"
blog[:content]=gets.chomp
blogs << blog
puts "-----Confirmation-----"
puts "The title and the body entered are as follows."
puts "Tile: #{blog[:title]}"
puts "body: #{blog[:content]}"

elsif number==2
puts "2: Check the blog created"
blogs.each do|blog|
puts "Tile: #{blog[:title]}"
puts "Body: #{blog[:content]}"
puts "-----------"
end

elsif number==3
puts "3: exit this blog operation"
break
else 
    puts "please enter a number from 1 to 3"
end

end


puts blogs