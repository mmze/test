# Упражнение 13
# Адаптируйте ваше решение из Упражнения 1 так, чтобы вместо palindrome?("foo")
# вы могли его использовать как "foo".palindrome? # => false.
module SayPalindrome
		def palindrome?
	    return false unless self.is_a?(String) and !self.empty?
	    ignore_str = self.gsub(/[^0-9A-Za-z]/, '').downcase
	    ignore_str.reverse == ignore_str
		end
end


class String
	include SayPalindrome
end

puts "foo".palindrome?
puts ''.palindrome?
puts "Madam, I'm Adam!".palindrome?
puts 'ololo'.palindrome?


