class Exercise < ApplicationRecord
  belongs_to :challenge

  validates :content_type, :content_url, :name, :description, presence: true
end
