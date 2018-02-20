animals = ["fox", "mouse", "dog" ,"cat"]
fave = "fox"

animals.each do |animal|
	if animal == fave
     puts "I love #{animal}es!"
	else
     puts animal
	end 
end