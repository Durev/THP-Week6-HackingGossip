class Gossip < ApplicationRecord
  validates :content, presence: true, length: { maximum: 400 }
  validates :corsair_id, presence: true
  belongs_to :corsair
end
