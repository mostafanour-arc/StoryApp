FactoryBot.define do
  factory :review do
    rating { 1 }
    comment { "MyText" }
    post { nil }
    user { nil }
  end
end
