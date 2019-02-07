def date_in_future(int)
	if int.is_a? Integer
		(Time.now + int.days)\
			.strftime("%d-%m-%Y %H:%M:%S")
	else
		Time.now.strftime("%d-%m-%Y %H:%M:%S")
	end
end

begin
	require "active_support/time"
	require 'date'
	puts "библиотека ActiveSupports подключена"
	puts "Выполнение тестовых заданий:"
	puts "Вывод +2 дня:"
	puts date_in_future(2)
	puts "Вывод не целого:"
	puts date_in_future([])
rescue LoadError
	puts "active_support не подключенна"
end
