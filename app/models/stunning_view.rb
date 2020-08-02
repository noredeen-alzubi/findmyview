class StunningView < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude, address: :address do |stunning_view,results|
    if geo = results.first
      stunning_view.city = geo.state
      stunning_view.address = geo.address
    end
  end
  after_validation :reverse_geocode
end
