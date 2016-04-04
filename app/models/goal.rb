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

class Goal < ActiveRecord::Base
  validates :body, :user_id, presence: true
  validates :status, inclusion: { in: ["Ongoing", "Completed"]}
  belongs_to :user

  def shareable=(shareable)
    shareable == "Private" ? false : true
  end
end
