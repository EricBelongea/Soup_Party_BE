require "rails_helper"

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:first_name)}
    it { should validate_presence_of(:last_name)}
    it { should validate_presence_of(:email)}
    it { should validate_uniqueness_of(:email)}
    it { should allow_value('user@example.com').for(:email) }
    it { should_not allow_value('invalid_email').for(:email) }
    it { should validate_presence_of(:password_digest)}
  end

  describe 'relations' do
    it { should have_many(:user_socials) }
    it { should have_many(:socials).through(:user_socials) }
  end

  describe 'has_secure_password' do
    it { should have_secure_password }
  end

  it "Faker and Factory Testing" do
    user = create(:user)

    expect(user).to be_instance_of(User)
  end
end