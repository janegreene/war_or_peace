require 'pry'

class Game
  def initialize(team1, team2)

  end

  def start
    p 'Welcome to War! (or Peace) This game will be played with 52 cards.'
    p 'The players today are Megan and Aurora.'
    p "Type 'GO' to start the game!"
    p '------------------------------------------------------------------'

    input = gets.chomp

    if input == 'GO' || 'go' || 'Go'
      p "starting game"
    end

  end

  # def shuffle
  #
  # end
end
