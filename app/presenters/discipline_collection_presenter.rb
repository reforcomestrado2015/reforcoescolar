class DisciplineCollectionPresenter
  delegate :current_page, :num_pages, :limit_value, :total_pages, to: :@disciplines

  def initialize(disciplines, context)
    @disciplines = disciplines
    @context = context
  end

  def to_ary
    @disciplines.map do |discipline|
      DisciplinePresenter.new(discipline, @context, false)
    end
  end
end
