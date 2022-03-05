class ExercisesController < ApplicationController
  def show

    @exercise = Exercise.find(params[:id])
    @challenge = Challenge.find(params[:challenge_id])
    session = Session.find_by(user: current_user, challenge: @challenge)
    @completed_exercise = CompletedExercise.find_by(exercise: @exercise, session: session)
  end
end
