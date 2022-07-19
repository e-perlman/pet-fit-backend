require "pry"
class OwnersController < ApplicationController

  # GET: /owners
  get "/owners" do
    Owner.all.to_json(include: [pets: {except: [:created_at, :updated_at]}], except: [:created_at, :updated_at])
  end

  # POST: /owners
  post "/owners" do
    @owner=Owner.create(params)
    if @owner.id 
      serialized_owner
    else
      @owner.errors.full_messages.to_sentence
    end
  end

  # GET: /owners/5
  get "/owners/:id" do
    find_owner
    if @owner
      serialized_owner
    else
      {errors: "Record not found with id #{params['id']}, try again with different id."}.to_json
    end
  end

  # PATCH: /owners/5
  patch "/owners/:id" do
    find_owner
    if @owner && @owner.update(params) #if we have a user and it was udpated successfully
      serialized_owner
    elsif !@owner
      {errors: "Record not found with id #{params['id']}, try again with different id."}.to_json
    else
      {errors: @owner.errors.full_messages.to_sentence}.to_json
    end
    
  end

  # DELETE: /owners/5
  delete "/owners/:id" do
    find_owner
    if @owner&.destroy
      {errors: "Record successfully destroyed."}.to_json
    else
      {errors: "Record not found with id #{params['id']}, try again with different id."}.to_json
    end
  end

  private
  def find_owner
    @owner= Owner.find_by(id: params["id"])
  end

  def serialized_owner
    @owner.to_json(include: :pets)
  end

end
