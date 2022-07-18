require './config/environment'

class ApplicationController < Sinatra::Base
  

  configure do
    set :public_folder, 'public'
    set :default_content_type, :json
  end

  get "/" do
    "Hello World"
  end

end
