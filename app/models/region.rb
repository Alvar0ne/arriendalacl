class Region < ActiveRecord::Base
	has_many :comunas
    has_many :publications
end
