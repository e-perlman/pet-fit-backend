class PetsController < ApplicationController

  # GET: /pets
  get "/pets" do
    Pet.all.to_json(include: [owners: {except: [:created_at, :updated_at]}], except: [:created_at, :updated_at])
  end

  # POST: /pets
  post "/pets" do
    @pet=Pet.create(params)
    if @pet.id 
      serialized_pet
    else
      @pet.errors.full_messages.to_sentence
    end
  end

  # GET: /pets/5
  get "/pets/:id" do
    find_pet
    if @pet
      serialized_pet
    else
      {errors: "Record not found with id #{params['id']}, try again with different id."}.to_json
    end
  end

  # PATCH: /pets/5
  patch "/pets/:id" do
    find_pet
    if @pet && @pet.update(params) #if we have a user and it was udpated successfully
      serialized_pet
    elsif !@pet
      {errors: "Record not found with id #{params['id']}, try again with different id."}.to_json
    else
      {errors: @pet.errors.full_messages.to_sentence}.to_json
    end
  end

  # DELETE: /pets/5/delete
  delete "/pets/:id" do
    find_pet
    if @pet&.destroy
      {errors: "Record successfully destroyed."}.to_json
    else
      {errors: "Record not found with id #{params['id']}, try again with different id."}.to_json
    end
  end

  private
  
  def find_pet
    @pet= Pet.find_by(id: params["id"])
  end

  def serialized_pet
    @pet.to_json(include: :pet_statuses)
  end
end
