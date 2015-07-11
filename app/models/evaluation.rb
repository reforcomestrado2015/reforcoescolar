class Evaluation < ActiveRecord::Base
  

  
  # Criamos um Array de 5 elementos, ao invés de range.
  POINTS = (1..5).to_a

  belongs_to :user
  belongs_to :discipline, counter_cache: true

  validates_uniqueness_of :user_id, scope: :discipline_id
  
  
  validates_presence_of :points, :user_id, :discipline_id
  
  
  validates_inclusion_of :points, in: POINTS



  
  def self.stars
    (average(:points) || 0).round
  end
end