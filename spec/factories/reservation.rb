FactoryBot.define do
  factory :reservation do
    guest_name { "MyString" }
    party_size { 9.99 }
    cancelled { false }
    time {1200}
    date {"Feb 28, 2025"}
    restaurant_id {1}
  end
end