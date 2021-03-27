FactoryBot.define do
  factory :user do
    name { SecureRandom.hex(10) }
  end
end
