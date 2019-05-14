FactoryBot.define do
  factory :anger_log do
    title { 'test' }
    thought { 'test' }
    feeling { 'test' }
    anger_stage { 1 }
    action { 'test' }
    result { 'test' }
    angered_at { Time.now }
  end
end
