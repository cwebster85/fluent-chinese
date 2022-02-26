class Exercise < ApplicationRecord
  belongs_to :challenge
  has_many :completed_exercises

  validates :content_type, :content_url, :name, :description, presence: true
end
