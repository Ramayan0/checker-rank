class InvitationSerializer < ActiveModel::Serializer
  belongs_to :assessment
  attributes :id, :students
end
