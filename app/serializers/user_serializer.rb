class UserSerializer < ActiveModel::Serializer
  has_many :invitation
  has_many :invitations
  attributes :id, :email, :mentor, :student, :username
end
