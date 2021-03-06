# Упражнение 11
# Реализуйте класс Dessert c геттерами и сеттерами для полей класса name и
# calories, конструктором, принимающим на вход name и calories, а также двумя
# методами healthy? (возвращает true при условии калорийности десерта менее 200)
# и delicious? (возвращает true для всех десертов)

class Desert

	attr_accessor :calories, :names

	def initialize(calories, names)
		@calories = calories
		@names = names
	end

	def healthy?
		return false if calories.nil?
		(0..200).include?(calories)
	end

	def delicious?
		true
	end
end

b = Desert.new(201, "fds")
puts b.calories
puts b.names
puts b.delicious?
puts b.healthy?
