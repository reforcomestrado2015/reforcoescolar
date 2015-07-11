class DisciplinesController < ApplicationController
  PER_PAGE = 2
  
  before_action :set_discipline, only: [:show]
  before_action :set_users_discipline, only: [:edit, :update, :destroy]
  before_action :require_authentication, only: [:new, :edit, :create, :update, :destroy]
  

  def index
    @search_query = params[:q]
    
    disciplines = Discipline.search(@search_query).
      most_recent.
      page(params[:page]).
      per(PER_PAGE)
    
    @disciplines = DisciplineCollectionPresenter.new(disciplines, self)
  end

  def show
    if user_signed_in?
      @user_evaluation = @discipline.evaluations.
        find_or_initialize_by(user_id: current_user.id)
    end
  end

  def new
    @discipline = current_user.disciplines.build
  end

  def edit
  end

  def create
    @discipline = current_user.disciplines.build(discipline_params)

    if @discipline.save
      redirect_to @discipline, notice: t('flash.notice.discipline_created')
    else
      render :new
    end
  end

  def update
    if @discipline.update(discipline_params)
      redirect_to @discipline, notice: t('flash.notice.discipline_updated')
    else
      render :edit
    end
  end

  def destroy
    @discipline.destroy
    redirect_to disciplines_url
  end

  private
  def set_discipline
    discipline_model = Discipline.friendly.find(params[:id])
    @discipline = DisciplinePresenter.new(discipline_model, self)
  end

  def set_users_discipline
    @discipline = current_user.disciplines.friendly.find(params[:id])
  end

  def discipline_params
    params.require(:discipline).permit(:title, :location, :description, :picture)
  end
end

