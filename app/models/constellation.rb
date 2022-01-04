class Constellation < ActiveRecord::Base
    # associations here
    has_many :stars
    has_many :users, through: :stars
    
    # instance and class methods here
end