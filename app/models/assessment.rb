class Assessment < ApplicationRecord
    has_many :invitations
    has_many :answers
end
