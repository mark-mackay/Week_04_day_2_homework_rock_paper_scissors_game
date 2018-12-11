require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game')
also_reload('./models/*')


get '/rpsgame/:hand1/:hand2' do
   game = RPSGame.new(params[:hand1],params[:hand2])
  @answer = game.check_win()
  erb( :result )
end

get '/rules' do
  erb( :rules )
end

get '/' do
  erb( :home)
end
