class Product < ActiveRecord::Base
  default_scope :order => 'title'
  validates_presence_of :title, :description, :image_url
  validates_uniqueness_of :title
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :image_url, :format => {:with => ~%r{\.(gif|jpg|png)$}, :message => 'must be a URL for GIF,JPG or PNG image'}
end
