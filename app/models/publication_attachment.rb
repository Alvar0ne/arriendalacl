class PublicationAttachment < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
    belongs_to :publication 
end
