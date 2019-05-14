require_relative 'config/environment'

class App < Sinatra::Base
#index
  get "/" do
    erb :index
  end
#new
  get "/new" do
    erb :create_puppy
  end

  post "/puppy" do
    @puppy_info = params
    erb :display_puppy
  end

  # #show
  # get "/puppy/:id" do
  #   @puppy = Puppy.find(params[:id])
  #   erb :display_puppy
  # end

end
