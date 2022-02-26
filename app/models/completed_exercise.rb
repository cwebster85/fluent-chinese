class CompletedExercise < ApplicationRecord
  belongs_to :session
  belongs_to :exercise
end
