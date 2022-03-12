class ChallengesController < ApplicationController
  def show
    @challenges = Challenge.all
    @challenge = Challenge.find(params[:id])
    @exercises = @challenge.exercises
    @completed_exercises = CompletedExercise.all
    @session = Session.find_by(user: current_user, challenge: @challenge)
    current_challenge_completed_exercises = @completed_exercises.where(session: @session, completed: true)
    flash[:notice] = "You have completed #{@challenge.name}" if current_challenge_completed_exercises.count == 5
  end

  def index
    @challenges = Challenge.all
  end
end
