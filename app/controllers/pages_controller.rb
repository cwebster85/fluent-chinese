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

  def profile
    current_user_sessions = current_user.sessions
    completed_sessions = current_user_sessions.select do |session|
      session.completed_exercises.where(completed: true).count == 5
    end
    @completed_challenges = completed_sessions.map do |completed_session|
      completed_session.challenge
    end
  end
end
