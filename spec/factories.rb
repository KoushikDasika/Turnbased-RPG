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

  factory :tile do
    sequence(:x, 0) {|n| n / 10}
    sequence(:y, 0) {|n| n % 10}
    is_empty true
    resistance = 0
  end

  factory :map do
    name "First map"
    layout { build_list(:tile, 100)}
  end

  factory :battle do
    association :first_army, factory: :good_guys, strategy: :build
    association :second_army, factory: :bad_guys, strategy: :build
    association :land, factory: :map, strategy: :build

    after(:build) {|battle| battle.generate_turn_list}
  end

  factory :game do
  end
end
