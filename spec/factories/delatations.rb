FactoryGirl.define do
  factory :delatation do
    category 1
    address 'Av. Blue Brook Knol, EUA'
    date Date.current
    shift 1
    description 'custom description to tests'
    longitude -5.123456
    latitude -10.123546
  end
end