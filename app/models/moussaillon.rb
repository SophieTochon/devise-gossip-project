class Moussaillon < ApplicationRecord

  has_many :gossips, dependent: :destroy
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true
end
