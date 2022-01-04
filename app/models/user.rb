class User < ActiveRecord::Base
    # associations here
    has_many :stars
    has_many :constellations, through: :stars
    
    # instance and class methods here
end