class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :account
  has_many :answer_replies
  has_one :best_answer
  include OwnerCheckable

  validates :contents, presence: true
end
