# frozen_string_literal: true

FactoryBot.define do
  factory :review do
    rating { 1 }
    comment { 'MyText' }
    post { nil }
    user { nil }
  end
end
