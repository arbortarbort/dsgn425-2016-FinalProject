class Africanctrytable < ActiveRecord::Base

  validates :AAC_id, presence: true
  validates :AAC, presence: true
  validates :AAC_foreignkey, presence: true

  has_many :users
end
