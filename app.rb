require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end
      @pirate = Pirate.new(params[:pirate])
      @ships = Ship.all
      erb :'pirates/show'
    end

  
  end
end
