class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "StunningView"
  belongs_to :rateable, :polymorphic => true
end
