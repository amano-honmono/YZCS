class User < ApplicationRecord
  validates :user_name, presence: true
  validates :user_name, uniqueness: true
  has_many :contest
end
