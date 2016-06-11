class Worldctrytable < ActiveRecord::Base

  validates :COR_id, presence: true
  validates :COR, presence: true
  
  has_many :users
end
