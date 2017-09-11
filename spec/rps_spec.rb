require('rspec')
require('pry')
require('rps')

  describe('RPS#wins') do
  it("rock is the first argument and scissors is the second") do
    game = RPS.new("rock", "scissors")
    expect(game.wins("rock", "scissors")).to(eq("rock beats scissors player 1 wins"))
  end

  it("scissors is the first argument and paper is the second") do
    game = RPS.new("scissors", "paper")
    expect(game.wins("scissors", "paper")).to(eq("scissors beats paper player 1 wins"))
  end

  it("paper is the first argument and rock is the second") do
    game = RPS.new("paper", "rock")
    expect(game.wins("paper", "rock")).to(eq("paper beats rock player 1 wins"))
  end

  it("rock is the first argument and paper is the second") do
    game = RPS.new("rock", "paper")
    expect(game.wins("rock", "paper")).to(eq("rock loses to paper player2 wins"))
  end

  it("scissors is the first argument and rock is the second") do
    game = RPS.new("scissors", "rock")
    expect(game.wins("scissors", "rock")).to(eq("scissors loses to rock player2 wins"))
  end

  it("paper is the first argument and scissors is the second") do
    game = RPS.new("paper", "scissors")
    expect(game.wins("paper", "scissors")).to(eq("paper loses to scissors player2 wins"))
  end

  it("both players select the same move") do
    game = RPS.new("paper", "paper")
    expect(game.wins("paper", "paper")).to(eq("you tied try again"))
  end

end
