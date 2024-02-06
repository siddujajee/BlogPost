class Feedback < ApplicationRecord
  belongs_to :dummy_post
  belongs_to :user
  belongs_to :parent, class_name:"Feedback", optional: true
  has_many :feedbacks, foreign_key: :parent_id
end
