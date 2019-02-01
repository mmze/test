# Дан массив элементов произвольной природы. Необходимо разработать метод
# max_odd(array), который определит максимальный нечетный элемент. Вернуть nil,
# если таких элементов нет в переданном массиве.
# Тесты для примеров и проверки:
# max_odd([1, 2, 3, 4, 4]) # => 3
# max_odd([21.0, 2, 3, 4, 4]) # => 21
# max_odd(['ololo', 2, 3, 4, [1, 2], nil]) # => 3
# max_odd(%w[ololo fufufu]) # => nil
# max_odd([2, 2, 4]) # => nil

# def max_odd(array = nil)
# 	if array.class == NilClass
# 		return nil
# 	else
# 		a = array.find_all{|key| key.class == Integer || key.class == Float}.\
# 				find_all{|i| i.round % 2 == 1}.max.to_i
# 		if a == 0

# 			return nil
# 		else
# 			return a
# 		end
# 	end

# end
require 'rspec'
questarrays = [
	[1, 2, 3, 4, 4],
	[21.0, 2, 3, 4, 4],
	['ololo', 2, 3, 4, [1, 2], nil],
	%w[ololo fufufu],
	[2, 2, 4],
	nil

]
def max_odd(array)
	return nil if array.is_a? NilClass
	a = array.compact.flatten.find_all{|x| x.is_a?(Integer) or x.is_a?(Float)}.select{|x| x % 2 == 1 }.max.to_i
  return a if a !=0
end

# puts "Вывод тестовых заданий: "
puts max_odd([21.5, 2, 3, 4, 4])

