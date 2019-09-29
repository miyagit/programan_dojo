class User < ApplicationRecord
  has_many :circle_users
  has_many :circles, through: :circle_users
  belongs_to :job
end
