require 'rails_helper'

RSpec.describe Customer, type: :model do
   describe "Factory test" do
      it "has a valid factory :customer" do
        expect(FactoryBot.build(:customer)).to be_valid
      end
    
      it "has a invalid factory :invalid_email" do
        expect(FactoryBot.build(:invalid_email)).to be_invalid
      end
    end

    describe "Form test" do
      it 'is invalid with wrong format email' do
        expect(FactoryBot.build(:invalid_email)).to be_invalid
      end
    end
end
