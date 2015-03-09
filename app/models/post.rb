class Post < ActiveRecord::Base
<<<<<<< HEAD
  has_many :comments 
  belongs_to :user 
    belongs_to :topic

  default_scope { order('created_at DESC') }
=======
  has_many :comments
  belongs_to :user
    belongs_to :topic

  default_scope { order('created_at DESC') }

>>>>>>> nesting-posts
end
