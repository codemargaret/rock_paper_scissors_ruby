require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/rps')

get('/') do
  erb(:input)
end

get('/output') do
  @player1 = params.fetch('player1')
  @player2 = params.fetch('player2')
  game = RPS.new(@player1,@player2)
  @rstring_to_display = game.wins(@player1, @player2)
  erb(:output)
end
