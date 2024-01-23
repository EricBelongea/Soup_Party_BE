require "rails_helper"

RSpec.describe "User Requests" do
  before(:each) do

  end

  it "INDEX - All users" do
    create_list(:user, 5)

    get api_v0_users_path
    users = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful

    expect(users[:data]).to be_a(Array)
    expect(users[:data].count).to eq(5)

    users[:data].each do |user|
      expect(user).to be_a(Hash)
      expect(user).to have_key(:id)
      expect(user[:id]).to be_a(String)
      
      expect(user).to have_key(:type)
      expect(user[:type]).to eq("user")
      expect(user[:type]).to be_a(String)
      
      expect(user).to have_key(:attributes)
      expect(user[:attributes]).to be_a(Hash)
      expect(user[:attributes].count).to eq(3)

      expect(user[:attributes]).to have_key(:first_name)
      expect(user[:attributes][:first_name]).to be_a(String)

      expect(user[:attributes]).to have_key(:last_name)
      expect(user[:attributes][:last_name]).to be_a(String)

      expect(user[:attributes]).to have_key(:email)
      expect(user[:attributes][:email]).to be_a(String)

      expect(user[:attributes]).to_not have_key(:password)
      expect(user[:attributes]).to_not have_key(:password_digest)
    end
  end

  it "SHOW - find user via ID" do
    user = create(:user)
    get api_v0_user_path(user.id)
    parsed_user = JSON.parse(response.body, symbolize_names: true)
    
    # require 'pry'; binding.pry
    expect(response).to be_successful

    expect(parsed_user).to be_a(Hash)
    expect(parsed_user[:data]).to have_key(:id)
    expect(parsed_user[:data][:id]).to be_a(String)

    expect(parsed_user[:data]).to have_key(:type)
    expect(parsed_user[:data][:type]).to eq("user")

    expect(parsed_user[:data][:attributes].count).to eq(3)
    expect(parsed_user[:data][:attributes]).to_not have_key(:password)
    expect(parsed_user[:data][:attributes]).to_not have_key(:password_digest)
    expect(parsed_user[:data][:attributes]).to have_key(:first_name)
    expect(parsed_user[:data][:attributes]).to have_key(:last_name)
    expect(parsed_user[:data][:attributes]).to have_key(:email)
    
    expect(parsed_user[:data][:attributes][:first_name]).to eq(user.first_name)
    expect(parsed_user[:data][:attributes][:last_name]).to eq(user.last_name)
    expect(parsed_user[:data][:attributes][:email]).to eq(user.email)
  end
end