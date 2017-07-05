FactoryGirl.define do
  factory :event do
    name              "Game On"
    description       "Fun"
    location          "My place"
    price             { Faker::Commerce.price }
    capacity          7
    includes_food     true
    includes_drinks   false
    active            true
    user              { build(:user) }


    trait :active do
      active true
    end

    trait :inactive do
      active false
      #
      # # `build` creates a Event object without saving
      # build :event, :active
      #
      # # `create` creates a Event object and saves it to the database
      # create :event, :active
      # create :event, :inactive
      #
      # # `create_list` creates a collection of objects for a given factory
      # # you can also use `build_list`
      # create_list :event, 2

    end
  end
end
