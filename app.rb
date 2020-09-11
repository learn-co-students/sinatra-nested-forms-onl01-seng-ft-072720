require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    get '/new' do
      erb :'pirates/new'
    end
    post '/pirates' do
      @pirate = Pirate.new(params)
      @pirate.name = params[:pirate][:name]
      @pirate.weight = params[:pirate][:weight]
      @pirate.height = params[:pirate][:height]
      ship_deets = params[:pirate][:ships]

      ship_deets.each do |deet_params|
        Ship.new({name: deet_params[:name], type: deet_params[:type], booty: deet_params[:booty]})
      end
      @ships = Ship.all

      erb :'pirates/show'
    end
  end
end
