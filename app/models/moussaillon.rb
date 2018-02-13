class Moussaillon < ApplicationRecord

  has_many :gossips, dependent: :destroy
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true

  attr_accessor :sign_up_code

  validates :sign_up_code,
    on: :create,
    presence: true,
    inclusion: { in: ["GOSSIP"] }

end
