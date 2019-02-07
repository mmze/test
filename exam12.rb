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
		return false unless !calories.nil?
		(0..200).include?(calories)
	end

	def delicious?
		return true
	end
end

class JellyBean < Desert
	attr_accessor :flavor

	def initialize(calories = nil, names = nil, flavor = nil)
		@flavor = flavor
	end

	def delicious?
		flavor == "black licorice"
	end

end

b = JellyBean.new(1, "аыв", "выфа")

puts JellyBean.new('').delicious?
puts JellyBean.new("black licorice1").delicious?
