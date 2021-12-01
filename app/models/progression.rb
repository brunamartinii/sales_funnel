class Progression < ApplicationRecord
  belongs_to :sale

  validates :stage, uniqueness: { scope: :sale }

  def days_ago
    (Date.today - created_at.to_date).to_i
  end

  def closed?
    stage == "closed"
  end
end
