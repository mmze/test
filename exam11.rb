# Упражнение 11
# Реализуйте класс Dessert c геттерами и сеттерами для полей класса name и
# calories, конструктором, принимающим на вход name и calories, а также двумя
# методами healthy? (возвращает true при условии калорийности десерта менее 200)
# и delicious? (возвращает true для всех десертов)

class Desert

	attr_accessor :calories, :names

	def initialize(calories = nil, names = nil)
		@calories = calories
		@names = names

		healthy?
	end

	def healthy?
		if calories.class == NilClass
			return true
		elsif calories < 200
			puts "можно"
			return true
		else
			puts "Хорошо подумай"
			return false
		end
	end

	def delicious?
		return true
	end
end

b = Desert.new(199, "Вкусняшка")

puts b.calories
puts b.names
puts b.delicious?

a = Desert.new()

puts b.calories
puts b.names
puts b.delicious?