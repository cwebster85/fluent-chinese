class Challenge < ApplicationRecord
  belongs_to :sessions
  has_many :exercises

  validates :name, :description, :date, presence: true
  validates :description, length: { minimum: 10 }
end
