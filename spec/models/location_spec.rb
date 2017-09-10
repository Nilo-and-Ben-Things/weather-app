require 'rails_helper'

RSpec.describe Location, type: :model do
  it "has a valid factory" do
    location = FactoryGirl.build :location
    expect(location).to be_valid
  end
end

describe Location do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:query) }
  it { should belong_to(:user) }
end