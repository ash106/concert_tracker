class Band < ActiveRecord::Base
  has_many :acts, dependent: :destroy
  has_many :concerts_played, through: :acts, source: :concert

  validates :name, presence: true
end
