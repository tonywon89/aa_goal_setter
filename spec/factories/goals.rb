# == Schema Information
#
# Table name: goals
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  body       :string           not null
#  shareable  :boolean          default("false")
#  status     :string           default("Ongoing")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :goal do
    user_id 1
    body "Find a job as coder"
    shareable true
    status "Ongoing"
  end
end
