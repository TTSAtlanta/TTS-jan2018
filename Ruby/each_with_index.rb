students = ["Shona","Shirlita","Brandi", "Fred", "Cindy", "Robert"]


puts "Pick a student: "
students.each_with_index do |student, index|
  puts "#{index+1}. #{student}"
end

choice = gets.chomp.to_i

puts "You chose #{students[choice-1]}"