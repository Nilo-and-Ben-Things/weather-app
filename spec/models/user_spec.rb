require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
      user = FactoryGirl.build :user
      expect(user).to be_valid
  end
end

describe User do
  it { should validate_presence_of(:token) }
  it { should validate_length_of(:locations) }
end