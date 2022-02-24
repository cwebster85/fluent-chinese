class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
    @session = @challenge.session
  end

  def index
  end
end
