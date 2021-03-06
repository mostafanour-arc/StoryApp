# frozen_string_literal: true

FactoryBot.define do
  factory :story do
    title { 'MyString' }
    body { 'MyText' }
    user { build :user }
  end
end
