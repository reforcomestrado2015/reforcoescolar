class Disciplines::EvaluationsController < ApplicationController
  before_filter :require_authentication

  def create
    evaluation = discipline.evaluations.
      find_or_initialize_by(user_id: current_user.id)

    evaluation.update!(evaluation_params)

    head :ok
  end

  def update
    create
  end

  private

  def discipline
    
    @discipline ||= Discipline.friendly.find(params[:discipline_id])
    
  end

  def evaluation_params
    params.
      require(:evaluation).permit(:points)
  end
end