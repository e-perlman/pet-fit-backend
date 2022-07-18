class PetsController < ApplicationController

  # GET: /pets
  get "/pets" do
    erb :"/pets/index.html"
  end

  # GET: /pets/new
  get "/pets/new" do
    erb :"/pets/new.html"
  end

  # POST: /pets
  post "/pets" do
    redirect "/pets"
  end

  # GET: /pets/5
  get "/pets/:id" do
    erb :"/pets/show.html"
  end

  # GET: /pets/5/edit
  get "/pets/:id/edit" do
    erb :"/pets/edit.html"
  end

  # PATCH: /pets/5
  patch "/pets/:id" do
    redirect "/pets/:id"
  end

  # DELETE: /pets/5/delete
  delete "/pets/:id/delete" do
    redirect "/pets"
  end
end
