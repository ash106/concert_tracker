class Concert < ActiveRecord::Base
  has_many :attendees, dependent: :destroy
  has_many :audience_members, through: :attendees, source: :user

  validates :venue, :location, :date, presence: true
end
