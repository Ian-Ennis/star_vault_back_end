require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/constellations" do
    constellations = Constellation.all;
    constellations.to_json({only: :name});
  end

  get "/stars" do 
    stars = Star.all;
    stars.to_json({only: [:id, :name, :distance, :apparent_magnitude, :temperature, :confirmed_planets]});
  end

  get "/users" do 
    users = User.all;
    users.to_json({only: :username})
  end

  delete "/stars/:id" do
    star = Star.find(params[:id])
    star.destroy
    star.to_json
  end

end
