class NearestStation < ApplicationRecord
  validates :railway, :station_name, :walk_minutes, presence: true
  belongs_to :property
end
