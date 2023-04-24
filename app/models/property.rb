class Property < ApplicationRecord
  validates :property, :rent, :address, :building_age, :remarks, presence: true
  has_many :nearest_stations, dependent: :destroy
  accepts_nested_attributes_for :nearest_stations, reject_if: :all_blank
end
