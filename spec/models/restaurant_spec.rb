require 'rails_helper'

RSpec.describe Restaurant, type: :model do
subject do
    Restaurant.new({
      name: "Chicken Feet",
      address: "123 Main St",
      city: "Mobile",
      state: "AL",
      zip: "45678"
      phone: "555-555-3456"
      website: "www.chickenfeet.com"
    })
  end

  
  it "should have a name" do
    restaurant = Restaurant.new
    restaurant.name = "Chicken Feet"
    expect(restaurant.name).to eq("Chicken Feet")
  end

  it "should NOT have a name" do
    restaurant = Restaurant.new
    expect(restaurant.name).not_to eq("Chicken Feet")
  end

  it "should have an address" do
    restaurant = Restaurant.new
    restaurant.address = "123 Main St"
    expect(restaurant.address).to eq("123 Main St")
  end

  it "should NOT have an address" do
    restaurant = Restaurant.new
    expect(restaurant.address).not_to eq("123 Main St")
  end

  it "should have a city" do
    restaurant = Restaurant.new
    restaurant.city = "Mobile"
    expect(restaurant.city).to eq("Mobile")
  end

  it "should NOT have a city" do
    restaurant = Restaurant.new
    expect(restaurant.city).not_to eq("Mobile")
  end

    it "should have a state" do
    restaurant = Restaurant.new
    restaurant.state = "AL"
    expect(restaurant.state).to eq("AL")
  end

  it "should NOT have a state" do
    restaurant = Restaurant.new
    expect(restaurant.state).not_to eq("AL")
  end

    it "should have a zip" do
    restaurant = Restaurant.new
    restaurant.zip = "45678"
    expect(restaurant.zip).to eq("45678")
  end

  it "should NOT have a zip" do
    restaurant = Restaurant.new
    expect(restaurant.zip).not_to eq("45678")
  end

    it "should have a phone" do
    restaurant = Restaurant.new
    restaurant.phone = "555-555-3456"
    expect(restaurant.phone).to eq("555-555-3456")
  end

  it "should NOT have a phone" do
    restaurant = Restaurant.new
    expect(restaurant.phone).not_to eq("555-555-3456")
  end

    it "should have a website" do
    restaurant = Restaurant.new
    restaurant.website = "www.chickenfeet.com"
    expect(restaurant.website).to eq("www.chickenfeet.com")
  end

  it "should NOT have a website" do
    restaurant = Restaurant.new
    expect(restaurant.website).not_to eq("www.chickenfeet.com")
  end
end
