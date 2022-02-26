class SessionsController < ApplicationController
  def create
    @challenge = Challenge.find(params[:id])
    @session = Session.new
    @session.challenge = @challenge
    @session.user = current_user
    if @session.save!
      redirect_to challenge_path(@challenge)
    else
      render "challenges/show"
    end
  end
end
