class Session < ApplicationRecord
  belongs_to :user
  has_one :challenge

  validates :user_id, :challenge_id, presence: true
end
