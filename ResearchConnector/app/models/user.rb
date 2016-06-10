class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :DOB, presence: true
  validates :AAC, presence: true
  validates :COR, presence: true
  validates :email, presence: true
  validates :pref_cnum, presence: true

  has_many :granttables
end
