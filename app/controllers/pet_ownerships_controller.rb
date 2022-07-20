require "pry"
class PetOwnershipsController < ApplicationController

  # GET: /pet_ownerships
  get "/pet_ownerships" do
    PetOwnership.all.to_json(include: [owner: {except: [:created_at, :updated_at]}], except: [ :updated_at])
  end

  # POST: /pet_ownerships
  post "/pet_ownerships" do
    @pet_ownership=PetOwnership.create(params)
    if @pet_ownership.id 
      serialized_pet_ownership
    else
      @pet_ownership.errors.full_messages.to_sentence
    end
  end

  # GET: /pet_ownerships/5
  get "/pet_ownerships/:id" do
    find_pet_ownership
    if @pet_ownership
      serialized_pet_ownership
    else
      {errors: "Record not found with id #{params['id']}, try again with different id."}.to_json
    end
  end

  # PATCH: /pet_ownerships/5
  patch "/pet_ownerships/:id" do
    find_pet_ownership
    if @pet_ownership && @pet_ownership.update(params) #if we have a user and it was udpated successfully
      serialized_pet_ownership
    elsif !@pet_ownership
      {errors: "Record not found with id #{params['id']}, try again with different id."}.to_json
    else
      {errors: @pet_ownership.errors.full_messages.to_sentence}.to_json
    end
  end

  # DELETE: /pet_ownerships/5
  delete "/pet_ownerships/:id" do
    find_pet_ownership
    if @pet_ownership&.destroy
      {errors: "Record successfully destroyed."}.to_json
    else
      {errors: "Record not found with id #{params['id']}, try again with different id."}.to_json
    end
  end

  private
  
  def find_pet_ownership
    @pet_ownership= PetOwnership.find_by(id: params["id"])
  end

  def serialized_pet_ownership
    @pet_ownership.to_json(include: :pet)
  end
end
