class PictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
