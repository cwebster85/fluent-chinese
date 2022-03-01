class CompletedExercisesController < ApplicationController
  def create
    @exercise = Exercise.find(params[:id])
    @session = Session.find_by(challenge_id: @exercise.challenge_id, user_id: current_user.id)
    @completed_exercise = CompletedExercise.new(exercise_id: @exercise.id, session_id: @session.id)
    if @completed_exercise.save!
      redirect_to challenge_exercise_path(id: @exercise.id, challenge_id: @exercise.challenge_id)
      flash[:notice] = "You have started #{@exercise.name}"
    else
      render "exercises/show"
    end
  end

  def update
    @exercise = Exercise.find(params[:id])
    @completed_exercise = CompletedExercise.find_by(exercise_id: params[:id])
    @completed_exercise.update(completed: true)
    redirect_to challenge_path(id: @exercise.challenge_id)
    flash[:notice] = "You have completed #{@exercise.name}"
  end
end
