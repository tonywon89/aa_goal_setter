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

require 'rails_helper'

RSpec.describe Comment, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
