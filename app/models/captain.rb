class Captain < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :life_point, presence: true
  validates :fav_attack, presence: true
  validates :attack_power, presence: true
  validates :photo, presence: true

  has_attachment :photo
end
