require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])
      Ship.new(name: params[:pirate][:ships][0][:name], type: params[:pirate][:ships][0][:type], booty: params[:pirate][:ships][0][:booty])
      #binding.pry
      Ship.new(name: params[:pirate][:ships][1][:name], type: params[:pirate][:ships][1][:type], booty: params[:pirate][:ships][1][:booty])
      # @pirate_name = params[:pirate][:name]
      # @pirate_height = pirate[:height]
      # @pirate_weight = pirate[:weight]
      # @ship_name_1 = pirate[:ships][0][:name]
      # @ship_name_2 = pirate[:ships][1][:name]
      # @ship_type_1 = pirate[:ships][0][:type]
      # @ship_type_2 = pirate[:ships][1][:type]
      # @ship_booty_1 = pirate[:ships][0][:booty]
      # @ship_booty_2 = pirate[:ships][1][:booty]
      erb :'pirates/show'
    end
   
    get '/post' do
    erb :'pirates/show'
 
    end
    
  end
end
