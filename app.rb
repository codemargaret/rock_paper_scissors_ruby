require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/rps')

get('/') do
  erb(:input)
end

get('/output') do
  @player1 = params.fetch('player1').downcase.gsub(/\W+/, '')
  @player2 = params.fetch('player2').downcase.gsub(/\W+/, '')
  game = RPS.new(@player1,@player2)
  @rstring_to_display = game.wins(@player1, @player2)
  erb(:output)
end
