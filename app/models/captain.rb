class Captain < ApplicationRecord
  has_attachment :photo, presence: true
end
