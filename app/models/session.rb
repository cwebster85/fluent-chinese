class Session < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  has_many :completed_exercises
  has_many :exercises, through: :completed_exercises

  validates :user_id, :challenge_id, presence: true
end
