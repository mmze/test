# Дан массив целых чисел. Необходимо разработать метод sort_array(array),который
# поменяет местами минимальные и максимальные элементы массива, а также
# добавит в конец массива одно минимальное значение из него.
# Тесты для примеров и проверки:

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
      max
    elsif x == max
      min
    else
      x
    end
  end<<min
end


puts sort_array([1,2,1,3])
