require "rails_helper"

RSpec.describe SocialDish, type: :model do
  describe 'relations' do
    it { should belong_to(:dish) }
    it { should belong_to(:social) }
  end
end