FactoryGirl.define do
  factory :ferrari, parent: :car do
    after(:create) do |car|
      create_list(:engine, 1, model: car) # this will create a real list of what is inside
    end
  end
end

build(:car).attributes # gives me a hash with all the values
