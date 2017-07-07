require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"


  describe "association with booking" do
    let(:guest_user) { create :user, email: "guest@user.com" }
    let(:host_user) { create :user, email: "host@user.com" }

    let!(:event) { create :event, user: host_user }
    let!(:booking) { create :booking, event: event, user: guest_user }

    it "has guests" do
      expect(event.guests).to include(guest_user)
    end
  end 

end
