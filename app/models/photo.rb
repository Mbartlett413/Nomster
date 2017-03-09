class Photo < ApplicationRecord
    belongs_to :place

    mount_uploader :avatar, AvatarUploader
  end