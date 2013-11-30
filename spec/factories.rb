require "factory_girl"

FactoryGirl.define do
  factory :character do
    level 1
    exp 0
    sequence(:stats) { |n| {
      :health => 100,
      :magic_points => 100,
      :attack => 100,
      :defense => 100,
      :special_attack => 100,
      :special_defense => 100,
      :evasion => 100,
      :speed => n,
      :luck => 100,
      :move => 5
    }}

    factory :hero do
      sequence(:name) {|n| "Hero#{n}"}
    end

    factory :villain do
      sequence(:name) {|n| "Villain#{n}"}
    end
  end

  factory :army do
    character_list []

    factory :good_guys do
      after(:build){|army|
        3.times { army.character_list << build(:hero) }
      }
    end

    factory :bad_guys do
      after(:build){|army|
        3.times { army.character_list << build(:villain) }
      }
    end
  end

  factory :battle do


  end
end
