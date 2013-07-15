class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  rps = ['R','P','S']
  p1 = m1[1].upcase
  p2 = m2[1].upcase
  unless rps.include? p1
      raise NoSuchStrategyError
  end
  unless rps.include? p2
      raise NoSuchStrategyError
  end
  if p1 == p2
      winner = m1
  end
  if p1 == 'P' and p2 == 'R'
      winner = m1
  end
  if p1 == 'P' and p2 == 'S'
      winner = m2
  end
  if p1 == 'R' and p2 == 'S'
      winner = m1
  end
  if p1 == 'R' and p2 == 'P'
      winner = m2
  end
  if p1 == 'S' and p2 == 'R'
      winner = m2
  end
  if p1 == 'S' and p2 == 'P'
      winner = m1
  end
  winner
end

def rps_game_winner(game)
  if game.length != 2
      raise WrongNumberOfPlayersError
  end
  m1,m2 = game
  rps_result(m1,m2)

end

def rps_tournament_winner(tournament)
  if tournament.length != 2
      raise WrongNumberOfPlayersError
  end
  bracket1,bracket2 = tournament
  if bracket1[1].is_a? String
      return rps_game_winner([bracket1,bracket2])
  else
      return rps_game_winner([rps_tournament_winner(bracket1),rps_tournament_winner(bracket2)])
  end
end
