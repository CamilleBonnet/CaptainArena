class Game < ApplicationRecord
  validates :player_A, presence: true
  validates :player_B, presence: true
end
