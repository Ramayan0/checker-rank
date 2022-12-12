class ReviewSerializer < ActiveModel::Serializer
  attributes  :message, :id, :user_id, :answer_id
  belongs_to :user
  belongs_to :answer
end
