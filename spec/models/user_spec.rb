require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }
  it 'expects name to be at least 3 characters' do
    user.name = 'wi'
    expect(user).to_not be_valide
  end

  it 'expects name to be presente' do
    user.name = nil
    expect(user).to_not be_valide
  end

  it 'expects the name to be less than 6 characters' do
    user.name = 'widzmarcjeannesly'
    expect(user).to_not be_valide
  end
end
