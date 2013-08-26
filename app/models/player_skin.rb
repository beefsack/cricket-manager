class PlayerSkin < ActiveRecord::Base
  validates :player_id, presence: true
  validates :skin_id, presence: true
  belongs_to :player
  belongs_to :skin
  has_one :match, through: :skin
end
