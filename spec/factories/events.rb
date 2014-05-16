# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    description "MyText"
    title "MyString"
    rsvp_link "MyString"
    time_at "2014-05-16 19:33:00"
    event_type nil
  end
end
