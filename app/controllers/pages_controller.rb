class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @challenges = Challenge.all
    @current_challenge = Challenge.find_by(date: Date.today)
  end
end
