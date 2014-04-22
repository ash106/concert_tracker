class Band < ActiveRecord::Base
  has_many :acts, dependent: :destroy
  has_many :played_concerts, through: :acts, source: :concert

  validates :name, presence: true
end
