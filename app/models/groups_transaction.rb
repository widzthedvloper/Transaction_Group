class GroupsTransaction < ApplicationRecord
  belongs_to :group
  belongs_to :my_transactions, class_name: 'Transaction'

  validates :transaction_id, presence: true
  validates :group_id, presence: true
end
