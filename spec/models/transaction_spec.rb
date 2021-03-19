require 'rails_helper'

RSpec.describe Transaction, type: :model do
  let(:transaction) { FactoryBot.build(:transaction) }
  it 'expects the name to be present' do
    transaction.name = nil
    expect(transaction).to_not be_valide
  end
end
