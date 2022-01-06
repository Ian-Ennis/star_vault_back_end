require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/constellations" do
    constellations = Constellation.all;
    constellations.to_json({only: [:constellation_name, :id]});
  end

  get "/stars" do 
    stars = Star.all;
    stars.to_json;
  end

  delete "/stars/:id" do
    star = Star.find(params[:id])
    star.destroy
    star.to_json
  end

  post "/constellations" do
    constellation = Constellation.create(
      constellation_name: params[:constellation_name]
    )
  end

  post "/stars" do
    star = Star.create(
      name: params[:name],
      distance: params[:distance],
      apparent_magnitude: params[:apparent_magnitude],
      temperature: params[:temperature],
      confirmed_planets: params[:confirmed_planets],
      constellation_id: Constellation.last.id
    )
  end




end
