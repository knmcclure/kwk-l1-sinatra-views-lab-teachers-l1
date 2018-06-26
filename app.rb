require './config/environment'
require './models/class'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/pets' do 
    @dogs = Dog.allNames
    return erb :pets  
  end 
  
  post '/newPet' do
    if params[:pet_type].downcase == "dog"
      Dog.new(params[:pet_name], params[:pet_age])
      @newPet = "Dog"
    else
      Cat.new(params[:pet_name], params[:pet_age])
      @newPet = "Cat"
    end 
    return erb :newPet 
  end
end
