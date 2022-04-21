FactoryBot.define do
  factory :menu do
    name { Faker::Food.dish }
    price { Faker::Number.positive }
    description { Faker::Food.description[0..100] }
  end

  factory :invalid_menu, parent: :menu do
    name { nil }
    description { nil }
    price { nil }
  end

  factory :invalid_description, parent: :menu do
    name { Faker::Food.dish }
    price { Faker::Number.positive }
    description {'Nasi uduk is an Indonesian style steamed rice cooked in coconut milk dish, which originated from Java. It was the brainchild of Sultan Agung of Mataram (Javanese ruler), inspired by his experience eating kebuli rice. According to Babad Tanah Jawa, Mataram sultans loved to eat "Arabic rice", which may refer to different types of pilaf or Arab-style rice. The phrase is often translated to kebuli (popular among Arabic descents in Indonesia) or biryani (an Indian Muslims dish) as these two dishes are the most commonly known among Javanese Muslims. Sultan Agung decided to make a local version of the "Arab dish", using local ingredients. He did this partly to reduce the state\'s expense (the cost to buy imported ingredients to make the above-mentioned dishes were very high) and to improve local pride. Uduk was introduced to Batavia by Javanese migrants in 1628, and later become popular dish in this region. Betawi people who sell this dish will often add a Betawi touch by adding semur jengkol. Uduk is also popular among Javanese diasporas in Suriname and the Netherlands.' }
  end
end
