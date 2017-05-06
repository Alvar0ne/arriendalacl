class Publication < ActiveRecord::Base

  has_many :publication_attachments
  accepts_nested_attributes_for :publication_attachments

  belongs_to :comuna
  belongs_to :region

  belongs_to :user
end
