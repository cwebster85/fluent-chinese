class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @challenges = Challenge.all
    @current_challenge = Challenge.find_by(date: Date.today)
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
