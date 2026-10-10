require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'コールバック' do
    it "作成時にwebauthn_idが生成されること" do
      user = User.create(username: "testuser", display_name: "Test User")
      expect(user.webauthn_id).to be_present
    end

    it { is_expected.to have_many(:passkey_credentials).dependent(:destroy) }
  end
end
