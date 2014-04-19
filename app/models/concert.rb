class Concert < ActiveRecord::Base
  validates :venue, :location, :date, presence: true
end
