require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/rock_paper_scissors')
# reload files from models when updated:
also_reload('./models/*')

get '/rules' do
  erb(:rules)
end

get '/game/:first/:second' do
  game = RockPaperScissors.new(params[:first],params[:second])
  @winner = game.play
  # sinatra looks for a folder called views for this file:
  erb(:result)
end
