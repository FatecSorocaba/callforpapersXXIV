class Speaker < ApplicationRecord
  has_one :talk

  accepts_nested_attributes_for :talk

  mount_uploader :picture, PictureUploader
end
