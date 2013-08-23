class Photo < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :album
  has_one :user, through: :album
end
