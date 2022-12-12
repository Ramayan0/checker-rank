class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :assessment_id, :message
end
