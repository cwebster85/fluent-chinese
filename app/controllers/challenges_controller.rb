class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
    @exercises = @challenge.exercises
    @completed_exercises = CompletedExercise.all
    @session = Session.find_by(user_id: current_user.id, challenge_id: @challenge.id)
    current_challenge_completed_exercises = @completed_exercises.where(session_id: @session.id, completed: true)
    flash[:notice] = "You have completed #{@challenge.name}" if current_challenge_completed_exercises.count == 5
  end

  def index
    @challenges = Challenge.all
  end
end
