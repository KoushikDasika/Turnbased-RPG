require "factory_girl"

FactoryGirl.define do
  factory :character do
    level 1
    exp 0
    stats {{
      :health => 100,
      :magic_points => 100,
      :attack => 100,
      :defense => 100,
      :special_attack => 100,
      :special_defense => 100,
      :evasion => 100,
      :speed => 100,
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

  factory :army do |a|
    character_list []


    factory :good_guys do
      character_list {[
        association(:hero, strategy: :build),
        association(:hero, strategy: :build, name: "BillyBob"),
        association(:hero, strategy: :build, name: "Dumbledore")
      ]}
    end

    factory :bad_guys do
      character_list {[
        association(:villain, strategy: :build),
        association(:villain, strategy: :build),
        association(:villain, strategy: :build)
      ]}
    end
  end
end
