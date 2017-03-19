FactoryGirl.define do
  factory :artist do
    name    { Faker::Name.name }
    remote_image_url   'http://res.cloudinary.com/doei2x1xz/image/upload/v1489916078/images_y7ceai.png'
  end
end
