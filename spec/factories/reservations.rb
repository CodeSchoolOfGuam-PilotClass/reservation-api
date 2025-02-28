FactoryBot.define do
  factory :reservation do
    guest_name { "MyString" }
    party_size { "9.99" }
    cancelled { false }
  end
end
