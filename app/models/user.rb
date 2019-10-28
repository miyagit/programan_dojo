class User < ApplicationRecord
  has_many :circle_users
  has_many :circles, through: :circle_users
  belongs_to :job

  validates :name, :age, :sex, :tall, :weight, :income, presence: true

  def hello
    "こんにちは、#{name}です。"
  end
end
