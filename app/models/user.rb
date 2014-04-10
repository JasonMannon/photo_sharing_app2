class User < ActiveRecord::Base
  has_secure_password
  validates :name, :presence => true
  validates :password, :presence => true
  validates :photo_id, :presence => true
  has_many :photos
end
