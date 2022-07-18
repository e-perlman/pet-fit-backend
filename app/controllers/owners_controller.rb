require "pry"
class OwnersController < ApplicationController

  # GET: /owners
  get "/owners" do
    # Owner.all.to_json(include: :pets)
    Owner.all.to_json(include: [pets: {except: [:created_at, :updated_at]}], except: [:created_at, :updated_at])
  end

  # POST: /owners
  post "/owners" do
    owner=Owner.create(params)
    if owner.id 
      owner.to_json(include: :pets)
    else
      owner.errors.full_messages.to_sentence
    end
  end

  # GET: /owners/5
  get "/owners/:id" do
    
  end


  # PATCH: /owners/5
  patch "/owners/:id" do
    
  end

  # DELETE: /owners/5/delete
  delete "/owners/:id/delete" do
    
  end
end
