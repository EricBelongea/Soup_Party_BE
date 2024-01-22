require "rails_helper"

RSpec.describe Dish, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:dish_name)}
    it { should validate_presence_of(:quantity)}
    it { should validate_presence_of(:feeds)}
    it { should validate_presence_of(:dessert)}
    it { should validate_numericality_of(:quantity) }
    it { should validate_numericality_of(:feeds) }
  end

  describe 'relations' do
    it { should have_many(:social_dishes) }
    it { should have_many(:socials).through(:social_dishes) }
  end
end