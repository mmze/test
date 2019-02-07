# Разработайте метод palindrome?(string), который будет определять, является ли
# строка string палиндром (строкой, которая читается одинаково как с начала так и с
# конца), при условии игнорирования пробелов, знаков препинания и регистра.
# Тесты для примеров и проверки:
# palindrome?("A man, a plan, a canal -- Panama") # => true
# palindrome?("Madam, I'm Adam!") # => true
# palindrome?(333) # => true
# palindrome?(nil) # => false
# palindrome?("Abracadabra") # => false


questions =
[
    "A man, a plan, a canal -- Panama",
    "Madam, I'm Adam!",
    "333",
    nil,
    "Abracadabra",
    "Шалаш",
    "",
    ''
]


def palindrome?(str = nil)
    return false unless str.is_a?(String) and !str.empty?
    ignore_str = str.gsub(/[^0-9A-Za-z]/, '').downcase
    ignore_str.reverse == ignore_str
end

 puts "Вывод тестовых заданий:"
 questions.each { |question|
     puts question.to_s+" --- "+
     palindrome?(question).to_s
 }



