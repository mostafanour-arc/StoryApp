# frozen_string_literal: true

FactoryBot.define do
  factory :review do
    rating { 1 }
    comment { 'MyText' }
    story { build :story }
    user { build :user }
  end
end
