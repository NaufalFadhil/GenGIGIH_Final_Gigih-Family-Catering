require 'rails_helper'

RSpec.describe Menu, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.build(:menu)).to be_valid
  end

  it 'is valid with a name and a description' do
    menu = Menu.new(
      name: 'Nasi Uduk',
      price: 15000.0,
      description: 'Betawi style steamed rice cooked in coconut milk. Delicious!'
    )

    expect(FactoryBot.build(:menu)).to be_valid
  end

  it 'is invalid without a name' do
    menu = Menu.new(
      name: nil,
      description: 'Betawi style steamed rice cooked in coconut milk. Delicious!',
      price: 15000.0
    )

    menu.valid?
    expect(menu.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without a price' do
    menu = Menu.new(
      name: 'Nasi Uduk',
      price: nil,
      description: 'Betawi style steamed rice cooked in coconut milk. Delicious!'
    )

    menu.valid?
    expect(menu.errors[:price]).to include("can't be blank")
  end

  it 'is invalid without a description' do
    menu = Menu.new(
      name: 'Nasi Uduk',
      price: 15000.0,
      description: nil
    )

    menu.valid?
    expect(menu.errors[:description]).to include("can't be blank")
  end
end