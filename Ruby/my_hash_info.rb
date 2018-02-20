students = %w(Shirlita Brandi Shona)
shirlita_count = 0
brandi_count = 0
shona_count = 0

1000000.times do
  lucky_winner = students.sample
  if lucky_winner == "Shirlita"
  	shirlita_count += 1
  elsif lucky_winner == "Brandi"
  	brandi_count += 1
  elsif lucky_winner == "Shona"
  	shona_count += 1
  end

end 

puts "The totals are..."
puts "Shirlita: #{shirlita_count}"
puts "Brandi: #{brandi_count}"
puts "Shona: #{shona_count}"	
  	