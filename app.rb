require 'sinatra/base'

class App < Sinatra::Base
#GET /newteam renders basketball team form
  get '/newteam' do
    erb :newteam
  end
#POST /team displays the basketball team details in the browser
  post '/team' do
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf]
    @sf = params[:sf]
    @c = params[:c]
    erb :team
  end

end
