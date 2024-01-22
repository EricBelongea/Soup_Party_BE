require "rails_helper"

RSpec.describe UserSocial, type: :model do
  describe 'relations' do
    it { should belong_to(:user) }
    it { should belong_to(:social) }
  end
end