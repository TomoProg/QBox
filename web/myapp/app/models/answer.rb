class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :account
  has_many :answer_replies
  include OwnerCheckable

  validates :contents, presence: true
end
