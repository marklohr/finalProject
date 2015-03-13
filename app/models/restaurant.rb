class Restaurant < ActiveRecord::Base

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :phone, presence: false
  validates :website, presence: false

end