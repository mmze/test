# Упражнение 12
# Создайте класс JellyBean, расширяющий класс Dessert (из Упражнения 11) новыми
# геттерами и сеттерами для атрибута flavor. Измените метод delicious? таким
# образом, чтобы он возвращал false только в тех случаях, когда flavor равняется
# «black licorice».
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


class JellyBean < Desert
	attr_accessor :flavor

	def initialize(flavor = nil)
		@flavor = flavor
	end

	def delicious?
		if flavor == "black licorice"
			return false
		else
			return true
		end
	end

end

b = JellyBean.new("black licorice")

puts JellyBean.new('').delicious?
puts JellyBean.new("black licorice").delicious?