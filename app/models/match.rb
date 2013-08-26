class Match < ActiveRecord::Base
  validates :match_date, presence: true
  has_many :skins, dependent: :destroy
  has_many :player_skins, through: :skins
  has_many :players, through: :player_skins
end
