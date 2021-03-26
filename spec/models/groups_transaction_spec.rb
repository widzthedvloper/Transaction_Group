require 'rails_helper'

RSpec.describe GroupsTransaction, type: :model do
  let(:groups_transaction) { FactoryBot.build(:groups_transaction) }
  it 'expect the transaction_id to be present' do
    groups_transaction.transaction_id = nil
    expect(groups_transaction).to_not be_valid
  end

  it 'expect the group_id to be present' do
    groups_transaction.group_id = nil
    expect(groups_transaction).to_not be_valid
  end
end
