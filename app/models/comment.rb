class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

   validates :body, length: { minimum: 5 }, presence: true
   validates :topic, presence: true
   validates :user, presence: true
   validates :title, presence: true

end
