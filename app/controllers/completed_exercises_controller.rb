class CompletedExercisesController < ApplicationController
  def create
    @exercise = Exercise.find(params[:exercise_id])
    @session = Session.find_by(challenge: @exercise.challenge, user: current_user)
    @completed_exercise = CompletedExercise.new(exercise: @exercise, session: @session)
    if @completed_exercise.save!
      redirect_to challenge_exercise_path(id: @exercise.id, challenge_id: @exercise.challenge_id)
      flash[:notice] = "You have started #{@exercise.name}"
    else
      render "exercises/show"
    end
  end

  def update
    @completed_exercise = CompletedExercise.find(params[:id])
    @completed_exercise.update(completed: true)
    flash[:notice] = "You have completed #{@completed_exercise.exercise.name}"
    redirect_to challenge_path(@completed_exercise.exercise.challenge)
  end
end
