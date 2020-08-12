class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :account
  include OwnerCheckable

  validates :contents, presence: true
end
