class Circle < ApplicationRecord
  has_many :circle_users
  has_many :users, through: :circle_users
end
