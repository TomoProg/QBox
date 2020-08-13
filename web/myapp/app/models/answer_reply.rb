class AnswerReply < ApplicationRecord
  belongs_to :answer
  belongs_to :account
  include OwnerCheckable

  validates :contents, presence: true
end
