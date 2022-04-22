FactoryBot.define do
  factory :customer do
    name { Faker::Name.name  }
    phone { Faker::PhoneNumber.cell_phone_in_e164 }
    address { Faker::Address.full_address }
    email { Faker::Internet.email }
  end

  factory :invalid_email, parent: :customer do
    name { Faker::Name.name  }
    phone { Faker::PhoneNumber.cell_phone_in_e164 }
    address { Faker::Address.full_address }
    email { "naufalfadhil@gojek" }
  end
end
