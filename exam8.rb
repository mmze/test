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


questarrays = [
	"ss",
	"1234",
	"sssdd34",
	2.3,
	[5,6,4]

]

def multiply_numbers(inputs = nil)
	if inputs.class == NilClass
		return nil
	else
		i = 1
		i.to_i
		inputs.to_s.gsub(/[^0-9]/, "").split('').each{|elem|
			if elem.to_i == 0
				return nil
			else
			i = i.to_i * elem.to_i
		end

		}
		if i == 1 
			return nil
		else

			return i
		end
	end
end

puts "Вывод тестовых заданий: "
questarrays.each{|elem|
	puts multiply_numbers(elem)

}


