class Transaction < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }

  belongs_to :user
  has_and_belongs_to_many :groups
end
