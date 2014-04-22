class Concert < ActiveRecord::Base
  has_many :attendees, dependent: :destroy
  has_many :audience_members, through: :attendees, source: :user
  has_many :acts, dependent: :destroy
  has_many :bands, through: :acts

  validates :venue, :location, :date, presence: true
end
