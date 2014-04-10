class Photo < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "400x400>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :image, :presence => true
  belongs_to :users
  has_many :tags
end
