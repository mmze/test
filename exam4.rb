# Дан массив целых чисел. Необходимо разработать метод sort_array(array),который
# поменяет местами минимальные и максимальные элементы массива, а также
# добавит в конец массива одно минимальное значение из него.
# Тесты для примеров и проверки:
# sort_array([]) # => []
# sort_array([2, 4, 6, 8]) # => [8, 4, 6, 2, 2]
# sort_array([1]) # => [1, 1]
# sort_array([1, 2, 1, 3]) # => [3, 2, 3, 1, 1]
# array.each_with_index{|x, y| array[y] = max if x ==  min; array[y] = min if x == max}<<min


questarrays = [
	[],
    [2, 4, 6, 8],
    [1],
    [1, 2, 1, 3]
]

def sort_array(array = [])
	min = array.min
  max = array.max
  array.map do |x|
    if x == min
      x = max
    elsif x == max
      x = min
    else
      x = x
    end
  end<<min
end


puts sort_array([1,2,1,3])
