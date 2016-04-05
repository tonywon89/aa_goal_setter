# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  body             :string           not null
#  user_id          :string           not null
#  commentable_type :string           not null
#  commentable_id   :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :comment do
    body "MyString"
    commentable_type "MyString"
    commentable_id 1
  end
end
