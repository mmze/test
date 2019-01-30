# Дан массив целых чисел. Необходимо разработать метод sort_array(array),который
# поменяет местами минимальные и максимальные элементы массива, а также
# добавит в конец массива одно минимальное значение из него.
# Тесты для примеров и проверки:
# sort_array([]) # => []
# sort_array([2, 4, 6, 8]) # => [8, 4, 6, 2, 2]
# sort_array([1]) # => [1, 1]
# sort_array([1, 2, 1, 3]) # => [3, 2, 3, 1, 1]


		# x = x unless x == min or x == max
		# x = min if x == max
		# x = max if x == min
	# array.each.collect{ |a| (a == min)? a = max : a }
	# array.each.collect{ |a| (a == max)? a = min : a }

questarrays = [
	[],
    [2, 4, 6, 8],
    [1],
    [1, 2, 1, 3]


]

def sort_array(array = [])
		min = array.min
    max = array.max
    array.each_with_index{|x, y| array[y] = max if x ==  min; array[y] = min if x == max}<<min
end




puts sort_array([1,2,1,3])
