# Упражнение 6
# Разработать методы для программы Камень-Ножницы-Бумага.
# Метод rps_game_winner должен принимать на вход массив следующей структуры
# [ ["player1", "P"], ["player2", "S"] ], где P - бумага, S - ножницы, R - камень, и
# функционировать следующим образом:
# • если количество игроков больше 2 необходимо вызывать исключение
# WrongNumberOfPlayersError;
# • если ход игроков отличается от ‘R’, ‘P’ или ‘S’ необходимо вызывать
# исключение NoSuchStrategyError;
# • в иных случаях необходимо вернуть имя и ход победителя, если оба
# игрока походили одинаково - выигрывает первый игрок.
# Тесты для примеров и проверки:
# rps_game_winner([%w[player1 P], %w[player2 S], %w[player3 S]])) # =>
# WrongNumberOfPlayersError
# rps_game_winner([%w[player1 P], %w[player2 A]])) # => NoSuchStrategyError
# rps_game_winner([%w[player1 P], %w[player2 S]])) # => 'player2 S'
# rps_game_winner([%w[player1 P], %w[player2 P]])) # => 'player1 P'


# класс для ошибки WrongNumberOfPlayersError
class WrongNumberOfPlayersError < Exception
end
# класс для ошибки NoSuchStrategyError
class NoSuchStrategyError < Exception
end

def victory_rules?(moves)
  return true if moves.uniq.size == 1
  early_move = %w[R P S]
  winner_strategy = [%w[R S], %w[P R], %w[S P], %w[S S], %w[P P], %w[R R]]
  raise NoSuchStrategyError, "NoSuchStrategyError wrong_turn" if (early_move - moves).size > 1
  winner_strategy.include?(moves)
end

def rps_game_winner(array = [])
  raise WrongNumberOfPlayersError, "WrongNumberOfPlayersError, number_of_players = #{array.size}" if array.size>2
  newgame = []
  array.each{|x| newgame<<x.last}
  if victory_rules?(newgame)
    array[0]
  else
    array[1]
  end
end

puts rps_game_winner([%w[player1 S], %w[player2 R]])
