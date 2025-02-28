require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it "can be cancelled" do
    r = create(:reservation, cancelled: false)
    r.cancel!
    expect(r.cancelled).to be true
  end
end