class Star < ActiveRecord::Base
    # associations here
    belongs_to :constellation
    belongs_to :user
    
    # instance and class methods here
end