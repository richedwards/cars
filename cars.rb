class Car

	@@total_car_count = 0
	@@cars_per_color = {}


	def self.total_car_count
        @@total_car_count
    end
	
	def to_s()
		"I'm a car! I've driven #{@distance} and have #{@fuel} gallons gas left"
	end

	def initialize(color)
		@fuel = 10
		@distance = 0
		@@total_car_count +=1
		if @@cars_per_color[color] 		
			@@cars_per_color[color] +=1
		else
			@@cars_per_color = 1
		end
	end
	
	def most_popular_color
		@@cars_per_color.max_by{|k,v| v}
	end
	
	

	# def color (color)


	# end


	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You're out of gas!"
		end
	end

	def fuel_up()
		gallons_needed = 10.0 - @fuel
		puts "You must pay $#{3.5 * gallons_needed}"
		@fuel = 10.0
	end
end

car_a = Car.new("red")
car_b = Car.new("red")
# puts car_a
# puts car_b
# car_a.drive(10)
# puts car_a
# puts car_b
# car_a.drive(232)
# car_b.drive(117)
# puts car_a
# puts car_b
# puts Car.total_car_count
c1 = Car.new("blue")
# puts Car.total_car_count
# c2 = Car.new
# puts Car.total_car_count

# # 1 - Class method on instance
# c = Car.new
# # c.total_car_count

# # 2 - Class method on class
# puts Car.total_car_count

# # 3 - Instance method on class
# # Car.drive(10)

# # 4 - Instance method on instance
# c = Car.new
# c.drive(10)
# puts c

# best_color = Car.most_popular_color
# Car.new(best_color)
puts most_popular_color.key


