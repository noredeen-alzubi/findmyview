class City < ApplicationRecord
  has_many :stunning_views
  def to_s
    name
  end 
end