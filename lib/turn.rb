require 'pry'
class Turn
  attr_reader :player1,
              :player2,
              :spoils_of_war


  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end

  def type
    if @player1.deck.rank_of_card_at(0) != @player2.deck.rank_of_card_at(0)
      :basic
    end
    # if 0 index of player1 != 0 index of player2
    # :basic
    #elsif
    # :war
    #else
    # :mutually_assured_destruction
  end

  def winner
    #######this is not working!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    if type.equal? :basic
      if @player1.deck.rank_of_card_at(0) > @player2.deck.rank_of_card_at(0)
        p @player1
      else
        p @player2
      end
    elsif type.equal? :war

    end
  end


end
