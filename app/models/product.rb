# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  image       :text
#  cost        :decimal(, )
#  latitude    :float
#  longitude   :float
#  address     :string(255)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :name, :description, :image, :cost, :latitude, :longitude, :address, :user_id, :tags

  belongs_to  :user
  has_and_belongs_to_many :tags
  mount_uploader :image, PicUploader

  before_save :geocoder

  private
  def geocoder
    result = Geocoder.search(self.address).first

    if result.present?
      self.latitude = result.latitude
      self.longitude = result.longitude
    end
  end

end
