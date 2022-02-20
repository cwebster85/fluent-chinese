class Session < ApplicationRecord
  belongs_to :user
  has_one :challenge
end
