class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @challenges = Challenge.all
    @current_challenge = Challenge.find_by(date: Date.today)
    completed_exercises = CompletedExercise.all
    @number_of_current_challenge_completed_exercises = completed_exercises.where(session_id: @session.id, completed: true).count if @session = Session.find_by(user_id: current_user.id, challenge_id: @current_challenge.id)
  end
end
