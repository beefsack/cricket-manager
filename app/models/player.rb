class Player < ActiveRecord::Base
  validates :name, presence: true
  has_many :player_skins
  has_many :skins, through: :player_skins
  has_many :matches, through: :skins
end
