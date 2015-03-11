class Post < ActiveRecord::Base
  has_many :comments 
  belongs_to :user 
    belongs_to :topic
   

  scope :ordered_by_title, -> { order("posts.title DESC") }
  scope :ordered_by_reverse_created_at, -> { order("posts.created_at DESC") }

  default_scope { order('created_at DESC') }

end
