class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :account

  validates :contents, presence: true
end
