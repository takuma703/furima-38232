FactoryBot.define do
  factory :item do
    name                      {"test"}
    introduction              {"説明"}
    category_id               {3}
    item_condition_id         {5}
    delivery_charge_payer_id  {2}
    prefecture_id             {3}
    shipping_date_id          {2}
    price                     {1000}
    association :user
    
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
