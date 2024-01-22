require "rails_helper"

RSpec.describe Social, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:social_name)}
    it { should validate_presence_of(:location)}
    it { should validate_presence_of(:description)}
    it { should validate_presence_of(:datetime)}
  end

  describe 'relations' do
    it { should have_many(:user_socials) }
    it { should have_many(:users).through(:user_socials) }
    it { should have_many(:social_dishes) }
    it { should have_many(:dishes).through(:social_dishes) }
  end
end