# Упражнение 7
# Анаграмма — литературный приём, состоящий в перестановке букв или звуков
# определённого слова (или словосочетания), что в результате даёт другое слово
# или словосочетание.
# Разработайте метод combine_anagrams(words_array), который принимает на вход
# массив слов и разбивает их в группы по анаграммам, регистр букв не имеет
# значения при определении анаграмм.
# Тест для примеров и проверки:
# combine_anagrams(%w[cars for potatoes racs four scar creams scream] # =>
# [ ["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams",
# "scream"] ]

questarrays = %w[cars for potatoes racs four scar creams scream]




def combine(array = nil)
	return nil unless array.is_a?(Array) or !array.is_a? NilClass
		anagram = array.each_with_object(Hash.new []) do |elem, hash|
			hash[elem.chars.sort] += [elem];
		end
    anagram.values
end

puts combine(questarrays)
puts combine()
