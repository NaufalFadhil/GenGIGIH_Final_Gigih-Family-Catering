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
end
