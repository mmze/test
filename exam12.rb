# Упражнение 12
# Создайте класс JellyBean, расширяющий класс Dessert (из Упражнения 11) новыми
# геттерами и сеттерами для атрибута flavor. Измените метод delicious? таким
# образом, чтобы он возвращал false только в тех случаях, когда flavor равняется
# «black licorice».
class Desert

	attr_accessor :calories, :names

	def initialize(calories = nil, name = nil)
		@calories = calories
		@name = name
	end

	def healthy?
		return false unless !calories.nil?
		(0..200).include?(calories)
	end

	def delicious?
		true
	end
end

class JellyBean < Desert

	attr_accessor :flavor

	def initialize(calories = nil, names = nil, flavor = nil)
		super(flavor)
			self.flavor = flavor
	end

	def delicious?
		super
			flavor != "black licorice"
	end

end

b = JellyBean.new(1, "аыв", "black licorice")
puts b.delicious?

