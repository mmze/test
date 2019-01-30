# Упражнение 8
# Написать метод multiply_numbers(inputs), который вернет произведение цифр,
# входящих в inputs.
# Тест для примеров и проверки:
# multiply_numbers() # => nil
# multiply_numbers('ss') # => nil
# multiply_numbers('1234') # => 24
# multiply_numbers('sssdd34') # => 12
# multiply_numbers(2.3) # => 6
# multiply_numbers([5, 6, 4]) # => 120
# inputs.to_s.gsub(/[^0-9]/, "").split('').each{|x| x = x.to_i * x.to_i}


questarrays = [
	nil,
	"ss",
	"1234",
	"sssdd34",
	2.3,
	[5,6,4]

]

def multiply_numbers(inputs = nil)
	return nil if inputs.nil? or inputs.to_s.gsub(/[^0-9]/, "").split('').size == 0
	inputs.to_s.gsub(/[^0-9]/, "").split('').inject{|result, x| result.to_i * x.to_i}
end

puts "Вывод тестовых заданий: "
questarrays.each{|elem|
	puts multiply_numbers(elem)

}


