class Skin < ActiveRecord::Base
  validates :match_id, presence: true
  belongs_to :match
  has_many :player_skins, dependent: :destroy
  has_many :players, through: :player_skins
  accepts_nested_attributes_for :player_skins
end
