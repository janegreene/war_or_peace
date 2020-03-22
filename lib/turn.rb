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
    elsif @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0) && @player1.deck.rank_of_card_at(2) == @player2.deck.rank_of_card_at(2)
        :mutually_assured_destruction
    else @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0)
          :war
    end
  end

  def winner #CHECK on variable named same as method
    if type.equal? :basic
      if @player1.deck.rank_of_card_at(0) > @player2.deck.rank_of_card_at(0)
         winner = @player1
      else
         winner = @player2
      end
    elsif type.equal? :war
      if @player1.deck.rank_of_card_at(2) > @player2.deck.rank_of_card_at(2)
        winner = @player1
      else
        winner = @player2
      end
    else type.equal? :mutually_assured_destruction
      "No Winner"
    end
 end

 def pile_cards
   if type.equal? :basic
     @spoils_of_war << @player1.deck.remove_card
     @spoils_of_war << @player2.deck.remove_card
  elsif type.equal? :war
    3.times do
       @spoils_of_war << @player1.deck.remove_card
     end
    3.times do
       @spoils_of_war << @player2.deck.remove_card
     end
   else type.equal? :mutually_assured_destruction
     3.times do
       @player1.deck.remove_card
       @player2.deck.remove_card
      end
   end
 end

 def award_spoils(turn_winner)
   if type.equal? :basic
      @spoils_of_war.each do |spoils|
       turn_winner.deck.add_card(spoils)
      end
    else type.equal? :war
      @spoils_of_war.each do |spoils|
      turn_winner.deck.add_card(spoils)
      end
   end
 end


end
