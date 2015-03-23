class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy 
  has_many :votes, dependent: :destroy 
  belongs_to :user
    belongs_to :topic
   

  scope :ordered_by_title, -> { order("posts.title DESC") }
  scope :ordered_by_reverse_created_at, -> { order("posts.created_at DESC") }

  default_scope { order('created_at DESC') }

   validates :title, length: { minimum: 5 }, presence: true
   validates :body, length: { minimum: 20 }, presence: true
   #validates :topic, presence: true
   #validates :user, presence: true

end
