class Group < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }
  validates :icon, presence: true

  has_and_belongs_to_many :transactions
  belongs_to :user
end
