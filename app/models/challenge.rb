class Challenge < ApplicationRecord
  validates :name, :description, :date, presence: true
  validates :description, length: { minimum: 10 }
end
