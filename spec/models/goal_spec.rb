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

require 'rails_helper'

RSpec.describe Goal, :type => :model do
  
  describe Goal do
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:user_id) }
    it { should belong_to(:user) }
    it { should validate_inclusion_of(:status).in_array(["Ongoing", "Completed"])}
  end

end
