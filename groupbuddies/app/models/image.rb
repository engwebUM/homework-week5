class Image < ActiveRecord::Base
	mount_uploader :file, PictureUploader

end
