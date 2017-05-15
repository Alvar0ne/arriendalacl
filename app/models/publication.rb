class Publication < ActiveRecord::Base

  has_many :publication_attachments , :dependent => :destroy
  accepts_nested_attributes_for :publication_attachments

  belongs_to :comuna
  belongs_to :region

  belongs_to :user


end
