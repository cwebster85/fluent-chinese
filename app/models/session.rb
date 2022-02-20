class Session < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

  validates :user_id, :challenge_id, presence: true
end
