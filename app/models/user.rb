class User < ActiveRecord::Base
  has_secure_password

  has_many :attendees, dependent: :destroy
  has_many :concerts_attended, through: :attendees, source: :concert

  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: /\A\S+@\S+\z/

end
