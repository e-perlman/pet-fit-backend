class PetStatusesController < ApplicationController

  # GET: /pet_statuses
  get "/pet_statuses" do
    PetStatus.all.to_json(include: [pet: {except: [:created_at, :updated_at]}], except: [ :updated_at])
  end

  # POST: /pets_statuses
  post "/pet_statuses" do
    @pet_status=PetStatus.create(params)
    if @pet_status.id 
      serialized_pet_status
    else
      @pet_status.errors.full_messages.to_sentence
    end
  end

  # GET: /pet_statuses/5
  get "/pet_statuses/:id" do
    find_pet_status
    if @pet_status
      serialized_pet_status
    else
      {errors: "Record not found with id #{params['id']}, try again with different id."}.to_json
    end
  end

  # PATCH: /pet_statuses/5
  patch "/pet_statuses/:id" do
    find_pet_status
    if @pet_status && @pet_status.update(params) #if we have a user and it was udpated successfully
      serialized_pet_status
    elsif !@pet_status
      {errors: "Record not found with id #{params['id']}, try again with different id."}.to_json
    else
      {errors: @pet_status.errors.full_messages.to_sentence}.to_json
    end
  end

  # DELETE: /pet_statuses/5
  delete "/pet_statuses/:id" do
    find_pet_status
    if @pet_status&.destroy
      {errors: "Record successfully destroyed."}.to_json
    else
      {errors: "Record not found with id #{params['id']}, try again with different id."}.to_json
    end
  end

  private
  
  def find_pet_status
    @pet_status= PetStatus.find_by(id: params["id"])
  end

  def serialized_pet_status
    @pet_status.to_json(include: :pet)
  end
end
