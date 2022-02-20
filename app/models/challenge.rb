class Challenge < ApplicationRecord
  belongs_to_many :sessions
  has_many :exercises
end
