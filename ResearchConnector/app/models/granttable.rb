class Granttable < ActiveRecord::Base

  validates :field, :presence => true
  # validates_presence_of :grant_amt, :message => "Grant Amount can not be empty"
  validates_presence_of :grant_amt, numericality: { greater_than: 0 }
  validates :abstract, presence: true
  validates :title, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }

    belongs_to :user
  end
