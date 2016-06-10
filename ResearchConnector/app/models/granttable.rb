class Granttable < ActiveRecord::Base

  # validates :field, presence: true
  validates :field, :presence => true
  validates :grant_amt, presence: true
  validates :title, presence: true
  validates :abstract, presence: true
  # validates :COR, presence: true
  # validates :email, presence: true
  # validates :pref_cnum, presence: true

  belongs_to :user
end
