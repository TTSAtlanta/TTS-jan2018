require_relative 'vehicle'
require_relative 'customer'

@car_inventory = []
@customer_roster = []

def print_menu(clear_option)
	if clear_option == 'YES'
		system ('clear')
	end
	puts "*************************************"
	puts "Welcome to the Car Rental Application"
	puts "Please make a selection from the options below: "
	puts "1. Add a Vehicle"
	puts "2. List Vehicles"
	puts "3. Add a Customer"
	puts "4. List Customers"
  puts "5. Rent a Car"
  puts "0. Exit"
	@choice = gets.chomp
end

def add_a_vehicle
  puts "Enter a year: "
  year = gets.chomp
  puts "Enter a make: "
  make = gets.chomp
  puts "Enter a model: "
  model = gets.chomp

  car = Vehicle.new(year, make, model)
   
  @car_inventory.push(car)
end

def add_a_customer
  puts "Enter the customer name: "
  name = gets.chomp
  puts "Enter the customer's age: "
  age = gets.chomp

  customer = Customer.new(name, age)

  @customer_roster.push(customer)
end

def list_cars
  index = 1
	puts "This is inventory of cars:"
	@car_inventory.each do |car|
     puts "#{index} Year: #{car.year}, Make: #{car.make}, Model: #{car.model}"
     index += 1
  end
end

def list_customers
	puts "This is the list of customers:"
	@customer_roster.each do |customer|
     puts "Name: #{customer.name}, Age: #{customer.age}"
  end
end

def rent_car
  puts "Which car do you want to rent: "
  list_cars
end

print_menu("YES")

while @choice != "0"
  if @choice == "1"
    add_a_vehicle
    print_menu("YES")
  elsif @choice == "2"
    list_cars
    print_menu("NO")
  elsif @choice == "3"
    add_a_customer
    print_menu("YES")
  elsif @choice == "4"
    list_customers
    print_menu("NO")
  elsif @choice == "5"
    rent_car
    print_menu("NO")
  else	
  	puts "Please select from the menu!"
  	print_menu("YES")
  end
end


puts "Thank you! Goodbye!"