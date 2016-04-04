FactoryGirl.define do
  factory :user do
    username { Faker::Name.name }
    password { Faker::Internet.password }

    factory :samuel_jackson do
      username "SamuelJackson"
      password "123456"
    end
  end


end
