class Worldctrytable < ActiveRecord::Base

  validates :COR_id, presence: true
  validates :COR, presence: true
  validates :COR_foreignkey, presence: true

  has_many :users
end
