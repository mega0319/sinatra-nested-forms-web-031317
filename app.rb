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
      @new_ship_one = Ship.new(params["pirate"]["ships"][0])
      @new_ship_two = Ship.new(params["pirate"]["ships"][1])
      @new_pirate = Pirate.new(name: params["pirate"][:name], weight: params["pirate"][:weight], height: params["pirate"][:height])
      erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
