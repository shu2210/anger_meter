class AngerLog < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :thought, presence: true, length: { maximum: 255 }
  validates :feeling, presence: true, length: { maximum: 255 }
  validates :anger_stage, presence: true, inclusion: { in: (0..10) }
  validates :action, presence: true, length: { maximum: 255 }
  validates :result, presence: true, length: { maximum: 255 }
  validates :angered_at, presence: true
end
