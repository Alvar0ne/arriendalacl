class Comuna < ActiveRecord::Base
  belongs_to :region
  has_many :publications
end
