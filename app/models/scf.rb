class Scf < ActiveRecord::Base
  attr_accessible :age, :name
mount_uploader :avatar, AvatarUploader
end
