class AssessmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :timeLimit, :questions
end
