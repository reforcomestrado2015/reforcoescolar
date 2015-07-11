class Room < ActiveRecord::Base
  extend FriendlyId

  has_many :reviews, dependent: :destroy
  belongs_to :user

  validates_presence_of :title
  validates_presence_of :slug

  mount_uploader :picture, PictureUploader
  friendly_id :title, use: [:slugged, :history]

  def self.search(query)
    if query.present?
      
      Room.joins(:user).where(['rooms.title ILIKE :query OR
              users.location ILIKE :query OR
              users.email ILIKE :query OR
              rooms.description ILIKE :query', query: "%#{query}%"])
    else
      all
    end
  end

  def self.most_recent
    #order(created_at: :desc)
    order(created_at: :desc, reviews_count: :desc)
  end

  def complete_name
    "#{title}, #{user.location}"
  end
  
  def user_information
    "(Professor: #{user.full_name} | Email: #{user.email})"
  end  
  

  
end
