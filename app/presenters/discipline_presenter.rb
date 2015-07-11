class DisciplinePresenter
  delegate :user, :created_at, :description, :location, :title, :to_param, :evaluations, to: :@discipline

  def self.model_name
    Discipline.model_name
  end

  def initialize(discipline, context, show_form=true)
    @context = context
    @discipline = discipline
    @show_form = show_form
  end

  def can_evaluation?
    @context.user_signed_in?
  end

  def show_form?
    @show_form
  end

  def evaluation
    @evaluation ||= @discipline.evaluations.
      find_or_initialize_by(user_id: @context.current_user.id)
  end

  def evaluation_route
    [@discipline, evaluation]
  end

  def route
    @discipline
  end

  def evaluation_points
    Evaluation::POINTS
  end

  def stars
    @discipline.evaluations.stars
  end

  def total_evaluations
    #@room.reviews.size
    @discipline.evaluations.count
  end

  # Faz com que a partial 'discipline' seja renderizada quando chamamos o 'render'
  # com o objeto da classe discipline presenter.
  def to_partial_path
    'discipline'
  end

  def picture_url
    @discipline.picture_url
  end

  def thumb_url
    @discipline.picture.thumb.url
  end

  def has_picture?
    @discipline.picture?
  end
end
