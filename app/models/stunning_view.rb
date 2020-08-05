class StunningView < ApplicationRecord
  belongs_to :city
  reverse_geocoded_by :latitude, :longitude do |stunning_view,results|
    if geo = results.first
      city = City.where(name: geo.state.camelcase).first || City.create(name: geo.state.camelcase)
      stunning_view.city_id = city.id
    end
  end
  after_initialize :reverse_geocode, if: ->(stunning_view){ stunning_view.latitude.present? && (stunning_view.latitude_changed? || stunning_view.longitude_changed?) }
end
