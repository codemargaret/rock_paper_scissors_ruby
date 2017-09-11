require('pry')
class RPS
  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
  end

  def wins(player1, player2)
    if (player1 === "rock") & (player2 === "scissors")
      "rock beats scissors player 1 wins"
    elsif (player1 === "paper") & (player2 === "rock")
      "paper beats rock player 1 wins"
    elsif (player1 === "scissors") & (player2 === "paper")
      "scissors beats paper player 1 wins"
    elsif (player1 === "rock") & (player2 === "paper")
      "rock loses to paper player2 wins"
    elsif (player1 === "scissors") & (player2 === "rock")
      "scissors loses to rock player2 wins"
    elsif (player1 === "paper") & (player2 === "scissors")
      "paper loses to scissors player2 wins"
    elsif (player1 === player2)
      "you tied try again"
    end

  end
end
