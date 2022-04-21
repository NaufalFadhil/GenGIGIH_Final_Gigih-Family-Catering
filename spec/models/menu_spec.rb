require 'rails_helper'

RSpec.describe Menu, type: :model do
  describe "Factory test" do
    it "has a valid factory :menu" do
      expect(FactoryBot.build(:menu)).to be_valid
    end
  
    it "has a invalid factory :invalid_description" do
      expect(FactoryBot.build(:invalid_description)).to be_invalid
    end
  end

  describe "Field name test" do
    it 'is valid with a name and a description' do
      expect(FactoryBot.build(:menu)).to be_valid
    end
    
    it 'is invalid without a name' do
      menu = FactoryBot.build(:menu, name: nil)
      menu.valid?
      
      expect(menu.errors[:name]).to include("can't be blank")
    end
  
    it "is invalid with a duplicate name" do
      menu1 = FactoryBot.create(:menu, name: "Nasi Uduk")
      menu2 = FactoryBot.build(:menu, name: "Nasi Uduk")
      menu2.valid?
      
      expect(menu2.errors[:name]).to include("has already been taken")
    end
  end

  describe "Field price test" do
    it 'is invalid without a price' do
      menu = FactoryBot.build(:menu, price: nil)
      menu.valid?
      
      expect(menu.errors[:price]).to include("can't be blank")
    end
    
    it 'is invalid with non numeric values' do
      menu = FactoryBot.build(:menu, price: "goceng")
      menu.valid?
      
      expect(menu.errors[:price]).to include("is not a number")
    end
  
    it 'is invalid with price less than 0.01' do
      menu = FactoryBot.build(:menu, price: -200.0)
      menu.valid?
      
      expect(menu.errors[:price]).to include("must be greater than or equal to 0.01")
    end
  end

  describe "Field description test" do
    it 'is invalid without a description' do
      menu = FactoryBot.build(:menu, description: nil)
      menu.valid?
      
      expect(menu.errors[:description]).to include("can't be blank")
    end

    it 'is invalid with 150 word of description' do
      menu = FactoryBot.build(:invalid_description)
      menu.valid?
      
      expect(menu.errors[:description]).to include("is too long (maximum is 150 characters)")
    end
  end
end
