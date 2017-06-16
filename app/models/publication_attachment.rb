class PublicationAttachment < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
    belongs_to :publication 
    validates_associated :publication

    validates_presence_of :avatar







end
