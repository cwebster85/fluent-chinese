class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
    @exercises = @challenge.exercises
  end

  def index
    @challenges = Challenge.all
  end
end
