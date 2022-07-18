require './config/environment'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/owners" do
    owners=Owner.all 
    owners.to_json
  end
  get '/owners/:id' do
    owner = Owner.find(params[:id])

    owner.to_json(include: :pets)
  end

end
