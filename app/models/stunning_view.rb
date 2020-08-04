class StunningView < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude do |stunning_view,results|
    if geo = results.first
      stunning_view.city = geo.state.downcase
      City.create(name:geo.state.downcase)
    end
  end

  after_validation :reverse_geocode, if: ->(stunning_view){ stunning_view.latitude.present? and stunning_view.latitude_changed? }

end
