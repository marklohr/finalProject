class Restaurant < ActiveRecord::Base

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :phone, presence: false
  validates :website, presence: false
  validates :latitude, presence: false
  validates :longitude, presence: false

  # geocoded_by :full_street_address
  # after_validation :geocode

  # def full_street_address
  #   "#{address} #{city} #{state} #{zip}"

  # end

end