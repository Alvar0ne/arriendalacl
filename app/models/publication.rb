class Publication < ActiveRecord::Base

  belongs_to :comuna
  belongs_to :region

  belongs_to :user
end
