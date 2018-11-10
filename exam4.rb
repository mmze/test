# Дан массив целых чисел. Необходимо разработать метод sort_array(array),который
# поменяет местами минимальные и максимальные элементы массива, а также
# добавит в конец массива одно минимальное значение из него.
# Тесты для примеров и проверки:
# sort_array([]) # => []
# sort_array([2, 4, 6, 8]) # => [8, 4, 6, 2, 2]
# sort_array([1]) # => [1, 1]
# sort_array([1, 2, 1, 3]) # => [3, 2, 3, 1, 1] 




questarrays = [
	[],
    [2, 4, 6, 8],
    [1],
    [1, 2, 1, 3]


]

def sort_array(array = nil)
	if array.class == NilClass
		return []
	elsif array.empty?
		return array
	else
		min = array.min
		max = array.max
		a = array.collect{|elem|
		  if elem ==  min
		    elem = max
		  elsif elem ==  max
		    elem = min
		  else
		    elem = elem
		  end
		}
		a = a<<min
		return a
	end
end


puts "Вывод тестовых заданий:"
questarrays.each{|elem| 
		puts sort_array(elem)
		puts "----------------"
	}

puts sort_array()
puts "----------------"