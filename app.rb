require './environment'

module FormsLab
  class App < Sinatra::Base

get '/' do
  erb :root
end

get '/new' do
  erb :"pirates/new"
end
    # code other routes/actions here
post '/pirates' do
@pirate = Pirate.new(params[:pirate])
erb :"pirates/show"
end
end
end
